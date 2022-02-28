class MenuItemExtra < ApplicationRecord
    has_many :order_item_extra
    belongs_to :menu_item
end
