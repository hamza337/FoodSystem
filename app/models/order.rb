class Order < ApplicationRecord
    belongs_to :restaurant
    has_many :order_items
    belongs_to :coupon
    belongs_to :order_status
end
