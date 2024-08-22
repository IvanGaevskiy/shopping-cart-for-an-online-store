Rails.application.routes.draw do
  resource :cart, only: [:show]
  post 'cart/add_item/:product_id', to: 'carts#add_item', as: 'add_item_to_cart'
  delete 'cart/remove_item/:cart_item_id', to: 'carts#remove_item', as: 'remove_cart_item'
  delete 'cart/clear', to: 'carts#clear', as: 'clear'
end
