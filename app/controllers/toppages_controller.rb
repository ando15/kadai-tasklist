class ToppagesController < ApplicationController
  def index
    if logged_in?
      @taskpost = current_user.taskposts.build
      @pagy,@taskposts = pagy(current_user.taskposts.order(id: :desc))
    end
  end
end
