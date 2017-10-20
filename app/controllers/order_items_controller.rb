class OrderItemsController < ApplicationController
before_action :set_product
before_action :get_current_order

  def create
    session[:order] || = {}
    product_id = order_items_params[:product_id]
    amount = order_items_params[:amount]
    session[:order][product_id] || = 0
    session[:order][product_id] += amount
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.all
  end

  def order_item_params
    params
    .require(:order_item)
    .permit(:product_id, :amount)
  end

  def get_current_order
    if !session[:order_id].nil?
      @current_order = Order.find(session[:order_id])
    else
      @current_order = Order.create
      @order_id = session[:order_id]
   end
 end


end
