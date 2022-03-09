class AddOrderItemToOrderItemExtra < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_item_extras, :order_item, null: false, foreign_key: true
  end
end
