class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @boats = Boat.all.where(user_id: current_user)
  end

  def new
    @boat = Boat.find(params[:boat_id])
    @order = Order.new
  end

  def create
    @user = User.first
    @boat = Boat.find(params[:boat_id])
    @order = Order.new(order_params)
    @order.user = @user
    @order.boat = @boat

    if @order.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:start_date, :end_date, :boat_id)
  end

end
