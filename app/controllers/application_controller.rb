class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   def initiate_cart
     @cart = ShoppingCart.new(session)
   end

end
