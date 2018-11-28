class PlantsController < ApplicationController
  before_action :find_plant, only: [:show]

  def index
    @plants = Plant.where.not(latitude: nil, longitude: nil)

      @markers = @plants.map do |plant|
        {
          lat: plant.latitude,
          lng: plant.longitude,
          infoWindow: { content: render_to_string(partial: "/plants/map_window", locals: { plant: plant }) }
        }
      end
  end

  def show
    @owner = @plant.user
  end


  private
  def find_plant
    @plant = Plant.find(params[:id])
  end
end
