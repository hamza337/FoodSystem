class Menu < ApplicationRecord
    belongs_to :restaurant
    has_many :menu_groups
end
