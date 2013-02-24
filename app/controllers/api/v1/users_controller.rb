class Api::V1::UsersController < ApplicationController
  respond_to :json
  def show
    @user = User.find_by_id_or_facebook_id params[:id]
    respond_with @user, status: :ok
  end

  def create
    @user = User.new params[:user]

    if @user.save
      respond_with @user, status: :created, location: api_v1_user_path(@user)
    else
      respond_with @user
    end
  end

  def update
    
  end

  def destroy
    
  end
end
