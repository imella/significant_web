class UsersController < ApplicationController
  before_filter :authenticate

  def index
    @users = User.order(:name)
    @user_count = @users.size
  end
end