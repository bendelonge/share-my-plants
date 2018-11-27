class PlantsController < ApplicationController
  before_action :find_plant, only: [:show]
  def index
    @plants = Plant.all
  end

  def show
  end


  private
  def find_plant
    @plant = Plant.find(params[:id])
  end

end
