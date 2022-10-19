Rails.application.routes.draw do
  get 'carts/show'
  get 'cart_items/new'
  get 'cart_items/create'
  get 'cart_items/destroy'
  get 'top/main'
  get 'products/index'
  get 'products/new'
  get 'products/create'
  get 'products/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
