class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  attr_accessor :discount
end
