class Api::V1::RunsController < ApplicationController

  def create
    @run = Run.new params[:run]
  end

end
