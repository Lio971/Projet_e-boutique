class Order < ApplicationRecord
	t.string   "name"
	t.string   "email"
	t.integer  "cart_id"
	t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
has_many :items,through: carts
belongs_to: user
end
