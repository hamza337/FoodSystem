class AddMenuToMenuGroup < ActiveRecord::Migration[7.0]
  def change
    add_reference :menu_groups, :Menu, null: false, foreign_key: true
  end
end
