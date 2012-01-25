class AddSchedulesAndTimeGaps < ActiveRecord::Migration
  def up
    create_table :schedules_time_gaps do |t|
      t.references :schedule, :time_gap
      t.timestamps
    end
  end

  def down
    drop_table :schedules_time_gaps 
  end
  
end