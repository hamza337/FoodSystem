class CreateWeekDays < ActiveRecord::Migration[7.0]
  def change
    create_table :week_days do |t|
      t.string :name

      t.timestamps
    end
  end
end
