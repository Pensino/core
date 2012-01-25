class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :student_id
      t.integer :matter_id
      t.integer :timetable_id

      t.timestamps
    end
  end
end
