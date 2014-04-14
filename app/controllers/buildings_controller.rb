class BuildingsController < ApplicationController
  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      redirect_to '/buildings/new'
      flash[:notice] = "Building created."
    else
      render 'new'
    end
  end

  def index
    @buildings = Building.all
  end

  private
    def building_params
      params.require(:building).permit(:address, :city, :state, :postcode, :owner_id)
    end
end
