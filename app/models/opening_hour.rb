class OpeningHour < ApplicationRecord
    belongs_to :restaurant
    belongs_to :week_day
end
