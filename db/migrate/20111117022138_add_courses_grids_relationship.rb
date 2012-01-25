class AddCoursesGridsRelationship < ActiveRecord::Migration
  def up
    add_column :grids, :course_id, :integer
  end

  def down
    remove_column :grids, :course_id, :integer
  end
end