class AddCouponToOrder < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :coupon, null: false, foreign_key: true
  end
end
