class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :timetables
      t.references :matters

      t.timestamps
    end
    add_index :schedules, :timetables_id
    add_index :schedules, :matters_id
  end
end
