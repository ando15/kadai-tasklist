class WindowsController < ApplicationController
  before_action :require_user_logged_in

  def new
    @window = Window.new
  end
end
