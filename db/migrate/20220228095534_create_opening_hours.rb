class CreateOpeningHours < ActiveRecord::Migration[7.0]
  def change
    create_table :opening_hours do |t|
      t.integer :from_hour
      t.integer :from_minute
      t.integer :to_hour
      t.integer :to_minute

      t.timestamps
    end
  end
end
