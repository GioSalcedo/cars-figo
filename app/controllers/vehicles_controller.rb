class VehiclesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @vehicles = Vehicle.all
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end
end
