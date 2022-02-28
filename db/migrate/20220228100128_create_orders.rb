class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.datetime :creation_date
      t.datetime :ordered_date
      t.datetime :prepared_date
      t.datetime :taken_over_date
      t.boolean :is_paid
      t.integer :price
      t.text :note

      t.timestamps
    end
  end
end
