class ApplicationController < ActionController::Base
  include SessionsHelper
  include Pagy::Backend
  
  private
  
  def counts(user)
    @count_microposts = user.microposts.count_micropost.count
  end
  
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
