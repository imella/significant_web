class Api::V1::UsersController < ApplicationController
  respond_to :json

  before_filter :utc_to_datetime, only: [:create]

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

  private

  def utc_to_datetime
    params[:user][:oauth_expires_at] = Time.at(params[:user][:oauth_expires_at]/1000)
    params[:user][:birthday] = Time.at(params[:user][:birthday]/1000).to_date
  end
end
