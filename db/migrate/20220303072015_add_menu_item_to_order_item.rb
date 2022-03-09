class AddMenuItemToOrderItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_items, :menu_item, null: false, foreign_key: true
  end
end
