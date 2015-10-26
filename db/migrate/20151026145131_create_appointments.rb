class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.integer :building_id
      t.integer :user_id
      t.integer :roomnumber_id

      t.timestamps null: false
    end
  end
end
