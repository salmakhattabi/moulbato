class OrdersController < ApplicationController
  before_action :set_orders, only: [:index, :new, :create]

  def index
    @orders = Order.all
  end

  def new
    @boat = Boat.find(params[:boat_id])
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @boat = Boat.find(params[:boat_id])
    @boat = @order.boat
    @order.save
  end

  private

  def set_orders
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:start_date, :end_date)
  end

end
