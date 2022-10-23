class CartsController < ApplicationController
  def show
    @cart_items = current_cart.cart_items.all
    @total_price = @cart_items.inject(0) {|result, i| result + i.sum_price }
  end
end
