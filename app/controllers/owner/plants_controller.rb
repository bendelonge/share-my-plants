class Owner::PlantsController < ApplicationController
  def index
    @plants = current_user.plants
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    if @plant.save
      redirect_to owner_plants_path
    else
      render 'new'
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])
    @plant.update(plant_params)
    redirect_to owner_plants_path
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to owner_plants_path
  end

private

  def plant_params
     params.require(:plant).permit(:species, :price_per_day, :main_picture, :description, :city_location)
  end
end
