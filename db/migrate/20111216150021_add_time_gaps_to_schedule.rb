class AddTimeGapsToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :time_gap_id, :integer
  end
end
