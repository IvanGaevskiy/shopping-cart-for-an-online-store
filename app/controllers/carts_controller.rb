class CartsController < ApplicationController
  def show
    @cart = Cart.first
    @cart_items = @cart.cart_items.includes(:product)
  end

  def remove_item
    @cart_item = CartItem.find(params[:cart_item_id])
    @cart_item.destroy
    redirect_back(fallback_location: cart_path)
  end

  def clear
    @cart = Cart.first
    @cart.cart_items.destroy_all
    redirect_back(fallback_location: cart_path)
  end
end
