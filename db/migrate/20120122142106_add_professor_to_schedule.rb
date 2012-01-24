class AddProfessorToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :professor_id, :integer
  end
end
