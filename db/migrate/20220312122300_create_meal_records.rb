class CreateMealRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_records do |t|

      t.timestamps
    end
  end
end
