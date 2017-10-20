class CartController < ApplicationController

  def show
    #@order_items = current_order.order_items
  end

  def index
    @order_items = current_order.order_items
  end

  def update
    @product = Product.find(params[:id])
    current_cart << @product.id
    session[:shopping_cart] = current_cart
  end


end
