class CartItem < ApplicationRecord
    belongs_to :product
    belongs_to :cart
    
    def sum_price
        product.price * qty
    end
end
