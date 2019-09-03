class Item < ApplicationRecord
has_many :users,through: carts

end
