class ProductsController < ApplicationController
#before_action :initiate_cart

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  #  @shopping_cart = initiate_cart
  end

end
