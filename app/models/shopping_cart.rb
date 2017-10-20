class ShoppingCart
  attr_reader :products

#  def initialize(session = {})
  #  @products = []
#    @session_lines = session[:shopping_cart] || []
    #find session with value shopping cart, OR store an empy array
#    @order_lines = @session_lines.map do |line|
#      Orderline.from_hash(line)
#.map is converting a collection of something into another collection
#this is like .new, but with superpowers
#    end
# end

  def add_product(product, amount = 1)
    raise ArgumentError.new("This is not a product") unless product.is_a? Product

   #  @products << product
    @order_lines << Orderline.new(product, amount).to_hash
    #will be able to store itself on the session
  end

  class Orderline
    attr_writer  :added_at, :price
    attr_reader :product, :amount

      def initialize(product, amount)
        @product = product
        @product_id = product.id
        @amount = amount
        @added_at = Time.now
        @price = product.price
      end

      def to_hash
        {
          product_id: @product_id,
          amount: @amount,
          added_at: @added_at,
          price: @price,
        }
      end

      def from_hash(line_hash)
        product = Product.where(id: line_hash[:product_id]).first
        return if product.nil?
        #return nothing if we do not have a product
        order_line = OrderLine.new(product, line_hash[:amount])
        order_line.added_at = line_hash[:added_at]
        order_line.price = line_hash[:price]
        end
    end



end
