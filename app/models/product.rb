class Product < ApplicationRecord
  has_many :order_items
  has_many :photos

    def set_total_price

    end
  
  end
