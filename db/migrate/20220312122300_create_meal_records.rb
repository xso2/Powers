class CreateMealRecords < ActiveRecord::Migration[6.0]
  def change
    create_table   :meal_records do |t|
      t.string     :text
      t.integer    :calorie 
      t.integer    :protein 
      t.integer    :fat 
      t.integer    :carb 
      t.integer    :meal_time_id,     null: :false
      t.references :user,             null:false, unique: true
      t.datetime   :start_time
      t.timestamps
    end
  end
end