class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.name :string
      t.description :text

      t.timestamps
    end
  end
end
