class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.integer :hospital_id
      t.integer :building_lot_id

      t.timestamps null: false
    end
  end
end
