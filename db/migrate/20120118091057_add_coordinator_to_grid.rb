class AddCoordinatorToGrid < ActiveRecord::Migration
  def change
    add_column :grids, :coordinator_id, :integer
  end
end
