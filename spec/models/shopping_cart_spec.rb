require "rails_helper"

describe ShoppingCart do
  let!(:cart) {ShoppingCart.new}

 it {expect(cart.products.size).to eq 0}


 describe "#add_product" do
   it "does not accept anything but produtcs" do
     expect{ cart.add_product("This is not a product")}.to rais_error(ArgumentError)
   end
 end

 describe "expect .product to contain products" do
   it "contains products" do
     expect{}
 end

end
