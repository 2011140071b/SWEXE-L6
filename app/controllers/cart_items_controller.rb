class CartItemsController < ApplicationController
  def new
    @cart_item = CartItem.new
    @product = Product.find(params[:product_id])
  end

  def create
    current_cart.cart_items.create(qty: params[:cart_item][:qty], product_id: params[:cart_item][:product_id], cart_id: current_cart.id)
    flash[:item_add_notice] = 'カートに商品を追加しました'
    redirect_to cart_path(current_cart.id)
  end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    flash[:delete_item] = 'カート内の商品を削除しました'
    redirect_to cart_path(current_cart.id)
  end
end
