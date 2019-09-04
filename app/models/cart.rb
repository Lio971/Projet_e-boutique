class Cart < ApplicationRecord
	t.integer  "quantity",   default: 1
  t.integer  "product_id"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
	t.integer  "order_id"
	validates :quantity, numericality { equal_to: 1 }


end
