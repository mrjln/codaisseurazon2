class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
  end

  def index
    @order_items = current_order.order_items
  end

end