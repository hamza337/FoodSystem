class AddWeekDayToOpeningHours < ActiveRecord::Migration[7.0]
  def change
    add_reference :opening_hours, :week_day, null: false, foreign_key: true
  end
end
