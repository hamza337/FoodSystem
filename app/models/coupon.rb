class Coupon < ApplicationRecord
    belongs_to :restaurant
    has_many :orders
end
