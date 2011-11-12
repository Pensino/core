class CreateMatters < ActiveRecord::Migration
  def change
    create_table :matters do |t|
      t.string :name
      t.text :description
      t.integer :quantityLessons

      t.timestamps
    end
  end
end
