class CreateOrderItemExtras < ActiveRecord::Migration[7.0]
  def change
    create_table :order_item_extras do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
