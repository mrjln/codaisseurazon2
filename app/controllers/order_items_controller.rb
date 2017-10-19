class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @order_item = OrderItem.new(order_item_params)

    if @order.save
      session[:order_id] = @order.id
      redirect_to order_items_url, notice: "Your item has been saved to your cart"
    else
      redirect_to order_items_url, notice: "something went wrong"
  end
end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    if @order_item.update_attributes(order_item_params)
      redirect_to @order, notice: "Added to chart"
    @order_items = @order.order_items
    else
      render :edit
  end
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
