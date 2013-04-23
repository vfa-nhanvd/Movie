# encoding: utf-8
class ApplicationController < ActionController::Base
  #protect_from_forgery
  before_filter :get_partial

  def get_partial
    @notifications = Notification.order("created_at desc").first(10)
    @m_has_shown = Movie.where(:has_shown => true).order("random ()").first(6)
    @t_movie = Movie.where(:kind => "a").order("plays desc").first(10)
    @t_tv = Movie.where(:kind => "b").order("plays desc").first(10)
  end

  def sanitize_for_to_param_with_vietnamese(seo)
    ret = seo
    ret = ret.gsub(/[àáạảãâầấậẩẫăằắặẳẵÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴ]/, 'a')
    ret = ret.gsub(/[ìíịỉĩÌÍỊỈĨ]/, 'i')
    ret = ret.gsub(/[ùúụủũưừứựửữÙÚỤỦŨƯỪỨỰỬỮ]/, 'u')
    ret = ret.gsub(/[èéẹẻẽêềếệểễÈÉẸẺẼÊỀẾỆỂỄ]/, 'e')
    ret = ret.gsub(/[òóọỏõôồốộổỗơờớợởỡÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠ]/, 'o')
    ret = ret.gsub(/[ỳýỵỷỹỲÝỴỶỸ]/, 'y')
    ret = ret.gsub(/[đĐ]/, 'd')
    ret = ret.gsub(/-{2,}/, '')
    ret = ret.gsub(/-+$/, '')     
    ret = ret.gsub(" ", "_")
    return ret
  end
end
