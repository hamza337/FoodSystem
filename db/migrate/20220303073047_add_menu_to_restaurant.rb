class AddMenuToRestaurant < ActiveRecord::Migration[7.0]
  def change
    add_reference :restaurants, :menu, null: false, foreign_key: true
  end
end
