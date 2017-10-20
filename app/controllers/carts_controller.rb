class CartsController < ApplicationController

  def show
  #  @current_cart
    #@order_items = current_order.order_items
  end

  def index
    #@order_items = current_order.order_items
  end

  def update
    @product = Product.find(params[:id])
    current_cart << @product.id
    session[:shopping_cart] = current_cart


  end

  private

  def total_price
    @product = Product.find(params[:id])
    @total_price = current_cart.count * @product.price
  end
  
end
