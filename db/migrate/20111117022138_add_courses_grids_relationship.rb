class AddCoursesGridsRelationship < ActiveRecord::Migration
  def up
    create_table :courses_grids do |t|
      t.references :grid, :course
    end
  end

  def down
    drop_table :courses_grids
  end
end