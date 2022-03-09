class AddMenuGroupToMenuItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :menu_items, :menu_group, null: false, foreign_key: true
  end
end
