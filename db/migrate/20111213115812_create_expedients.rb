class CreateExpedients < ActiveRecord::Migration
  def change
    create_table :expedients do |t|
      t.string :day_of_week
      t.datetime :start_time
      t.datetime :end_time
      t.integer :quantity_lessons

      t.timestamps
    end
  end
end
