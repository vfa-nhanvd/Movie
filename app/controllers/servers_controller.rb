class ServersController < ApplicationController
  def index
    @servers = Server.where("name like ?", "%#{params[:q]}%")
    
    respond_to do |wants|
      wants.html
      wants.json { render :json => @servers.map(&:attributes) }
    end
  end
end
