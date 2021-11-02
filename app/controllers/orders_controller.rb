class OrdersController < ApplicationController
  before_action :set_orders, only: [:index, :new, :create]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @boat = Boat.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to boats_path
    end
  end

  private

  def set_orders
    @orders = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id, :boat_id)
  end
end
