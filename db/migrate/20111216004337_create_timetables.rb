class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.references :grid
      t.string :name
      t.string :description

      t.timestamps
    end
    add_index :timetables, :grid_id
  end
end
