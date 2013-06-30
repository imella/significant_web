class RacesController < ApplicationController
  before_filter :authenticate

  def index
    @races = Race.all
  end

  def show
    @race = Race.find params[:id]
    @runs = @race.runs.includes(:user).order('created_at desc')
  end
end