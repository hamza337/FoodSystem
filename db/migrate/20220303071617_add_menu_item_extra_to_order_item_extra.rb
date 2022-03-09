class AddMenuItemExtraToOrderItemExtra < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_item_extras, :menu_item_extra, null: false, foreign_key: true
  end
end
