class AddMenuItemToMenuItemExtra < ActiveRecord::Migration[7.0]
  def change
    add_reference :menu_item_extras, :menu_item, null: false, foreign_key: true
  end
end
