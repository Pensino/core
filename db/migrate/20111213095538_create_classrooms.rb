class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|

      t.references :school
      t.string :name
      t.timestamps
    end
  end
end
