class MenuItem < ApplicationRecord
    belongs_to :menu_group
    has_many :order_items
    has_many :menu_item_extras

end
