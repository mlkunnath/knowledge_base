class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  def load_tags_cloud
    @tags_cloud = ActsAsTaggableOn::Tag.most_used(10)
  end
  
end
