class CreateGrids < ActiveRecord::Migration
  def change
    create_table :grids do |t|
      t.string :name
      t.boolean :draft

      t.timestamps
    end
  end
end
