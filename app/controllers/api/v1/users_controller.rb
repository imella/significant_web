
module Api
  module V1 
    class UsersController < ApplicationController
      respond_to :json
      def show
        @user = User.find params[:id]
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
    end
  end
end
