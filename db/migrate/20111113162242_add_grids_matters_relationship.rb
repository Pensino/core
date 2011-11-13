class AddGridsMattersRelationship < ActiveRecord::Migration
  def up
    create_table :grids_matters do |t|
      t.references :grid, :matter
    end
  end

  def down
    drop_table :grids_matters  
  end
end
