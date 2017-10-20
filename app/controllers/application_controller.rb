class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_cart

   #def initiate_cart
    # @cart = ShoppingCart.new(session)
   #end

   def current_cart
     session[:cart] ||= []
   end

end
