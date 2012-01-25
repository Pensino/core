class AddTimeGapToSchedule < ActiveRecord::Migration
  def change
    add_index :schedules, :time_gap_id
  end
end
