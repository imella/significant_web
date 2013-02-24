class Api::V1::RunsController < ApplicationController
  respond_to :json

  before_filter :utc_to_datetime, only: [:create]

  def show
    @run = Run.find params[:id]
    respond_with @run
  end

  def create
    @run = Run.new params[:run]
    if @run.save
      respond_with @run, status: :created, location: api_v1_run_path(@run)
    else
      respond_with @run
    end
  end

  private

  def utc_to_datetime
    params[:run][:started_at] = Time.at params[:run][:started_at]
    params[:run][:ended_at] = Time.at params[:run][:ended_at]
  end

end
