class CreateMenuGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_groups do |t|
      t.string :name
      t.integer :order_index

      t.timestamps
    end
  end
end
