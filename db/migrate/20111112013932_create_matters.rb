class CreateMatters < ActiveRecord::Migration
  def change
    create_table :matters do |t|
      t.name :string
      t.description :text
      t.quantityLessons :integer

      t.timestamps
    end
  end
end
