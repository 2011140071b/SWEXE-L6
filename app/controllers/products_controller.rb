class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(name: params[:product][:name], price: params[:product][:price])
    @product.save
    flash[:product_add_notice] = '商品を登録しました'
    redirect_to root_path
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:delete_product] = '商品を削除しました'
    redirect_to root_path
  end
end
