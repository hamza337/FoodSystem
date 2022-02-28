class Restaurant < ApplicationRecord
    has_one :menu
    has_many :coupons
    has_many :opening_hours
    has_many :orders
end
