class CreateBodyMakes < ActiveRecord::Migration[6.0]
  def change
    create_table   :body_makes do |t|
      t.decimal    :weight,     null: false, precision: 4, scale: 1
      t.string     :text           
      t.datetime   :start_time
      t.references :user,       null:false, unique: true
      t.timestamps
    end
  end
end