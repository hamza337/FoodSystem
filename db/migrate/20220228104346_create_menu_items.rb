class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :order_index

      t.timestamps
    end
  end
end
