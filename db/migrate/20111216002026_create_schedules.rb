class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :timetable
      t.references :matter

      t.timestamps
    end
    add_index :schedules, :timetable_id
    add_index :schedules, :matter_id
  end
end
