class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_plant, only: [:show]

  def index

    if user_signed_in?
      @plants = Plant.where.not(latitude: nil, longitude: nil, user: current_user.id)
    else
      @plants = Plant.where.not(latitude: nil, longitude: nil)
    end

    if params[:location].present?
      @plants = @plants.near(params[:location], 50)
    end


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
    @booking = Booking.new

  end

  private

  def find_plant
    @plant = Plant.find(params[:id])
  end
end


# @flats = @flats.near(params[:city], 10)
