class BoatsController < ApplicationController
  def index
  @boats = Boat.all
 end
 def new
  @boat = Boat.new
 end
  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to boat_path
    else
      render :new
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end
  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name, :description, :price)
  end
end
