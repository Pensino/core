class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      #common attributes from people
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
