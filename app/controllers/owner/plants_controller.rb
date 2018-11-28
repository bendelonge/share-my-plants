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
    if @plant[:main_picture].nil?
      @plant[:main_picture] = "image/upload/v1543426858/dbkzj7d2xhp9lpubvbox.jpg"
    end
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
    params[:plant][:price_per_day] = params[:plant][:price_per_day].to_f * 100
    params.require(:plant).permit(:species, :price_per_day, :main_picture, :description, :city_location)
  end

end
