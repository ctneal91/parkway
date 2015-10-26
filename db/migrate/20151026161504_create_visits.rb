class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.date :date
      t.time :time
      t.integer :building_id
      t.integer :user_id
      t.integer :room_id

      t.timestamps null: false
    end
  end
end
