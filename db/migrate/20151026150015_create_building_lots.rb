class CreateBuildingLots < ActiveRecord::Migration
  def change
    create_table :building_lots do |t|
      t.integer :building_id
      t.integer :lot_id

      t.timestamps null: false
    end
  end
end
