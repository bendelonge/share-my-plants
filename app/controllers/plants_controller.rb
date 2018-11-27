class PlantsController < ApplicationController
  before_action :find_plant, only: [:show]
  def index
  end

  def show
    @owner = @plant.user
  end


  private
  def find_plant
    @plant = Plant.find(params[:id])
  end

end
