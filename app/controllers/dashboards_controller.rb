class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @posts = @user.posts.preload(:city).first(10)
  end
end