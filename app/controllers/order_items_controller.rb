class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @order_item = @order_items.new(order_item_params)

    if @order.save?
      notice: "Your item has been saved to your cart"
      session[:order_id] = @order.id
    else
      notice: "something went wrong"
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
  end


  private

  def order_item_params
    params
    .require(:order_item)
    .permit(:amount, :product_id)
  end
end
