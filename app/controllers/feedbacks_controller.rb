class FeedbacksController < ApplicationController
  def notice_error_link
    unless session["notice_episode_#{params[:id]}"]
      session["notice_episode_#{params[:id]}"] = "notice_episode_#{params[:id]}"
      Feedback.create(:episode_id => params[:id].to_i, :kind => "a", :date => Time.now.strftime("%I:%M%p %d/%m/%Y").to_s)
      
      respond_to do |wants|
        wants.js
      end
    end
  end
end
