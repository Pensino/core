class AddDayofweekToSchedule < ActiveRecord::Migration
  def up
    add_column :schedules, :day_of_week, :string
    add_column :schedules, :start_time, :datetime
    add_column :schedules, :end_time, :datetime
  end

  def down
    remove_column :schedules, :day_of_week, :string
    remove_column :schedules, :start_time, :datetime
    remove_column :schedules, :end_time, :datetime
  end
end
