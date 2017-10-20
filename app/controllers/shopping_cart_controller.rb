class ShoppingCartController < ApplicationController
  before_action :initiate_cart

  def index
    #show contents @cart
  end

  def create
    @shopping_cart.add_product(product_params)
  end

  def destroy
    #remove from @cart

  end


  def product_params
    params
    .require(:order_item)
    .permit(:product_id, :amount)
  end

end
