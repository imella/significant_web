class Api::V1::RacesController < ApplicationController
  respond_to :json

  def index
    @races = Race.all
    respond_with @races
  end

  def show
    @race = Race.find params[:id]
    respond_with @race
  end

  def create
    @race = Race.new params[:race]
    if @race.save
      respond_with @race, status: :created, location: api_v1_race_path(@race)
    else
      respond_with @race
    end
  end

  def update
    
  end

  def destroy
    
  end

end
