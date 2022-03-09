class AddRestaurantToCoupon < ActiveRecord::Migration[7.0]
  def change
    add_reference :coupons, :restaurant, null: false, foreign_key: true
  end
end
