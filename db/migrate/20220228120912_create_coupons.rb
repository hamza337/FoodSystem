class CreateCoupons < ActiveRecord::Migration[7.0]
  def change
    create_table :coupons do |t|
      t.string :code
      t.string :name
      t.decimal :discount
      t.integer :maximum_uses

      t.timestamps
    end
  end
end
