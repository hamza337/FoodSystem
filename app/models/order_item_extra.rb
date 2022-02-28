class OrderItemExtra < ApplicationRecord
    belongs_to :order_item
    belongs_to :menu_item_extra
end
