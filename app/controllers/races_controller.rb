class RacesController < ApplicationController
  before_filter :authenticate

  def index
    @races = Race.all
  end

  def show
    @race = Race.find params[:id]
    @runs = @race.runs.includes(:user).order('created_at desc')
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "significant" && password == "diablo666"
    end
  end
end