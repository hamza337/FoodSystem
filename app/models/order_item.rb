class OrderItem < ApplicationRecord
    belongs_to :order
    has_many :order_item_extras
    belongs_to :menu_item
end
