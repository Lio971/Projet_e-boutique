class Item < ApplicationRecord
has_many :users,through: carts
has_many :orders 
validates :title, presence: true
validates :price, presence: true
validates :description, presence: true
end
