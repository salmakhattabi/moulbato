class BoatsController < ApplicationController
  def index
  @boats = Boat.all
 end

  def new
   @boat = Boat.new
 end

  def show
    @boat = Boat.find(params[:id])
  end

  def create
    @boat = Boat.new(boat_params)
    @user = User.first
    @boat.user = @user
    if @boat.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name, :description, :price, photos:[])
  end
end
