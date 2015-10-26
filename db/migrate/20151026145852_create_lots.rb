class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :name
      t.integer :building_lot_id

      t.timestamps null: false
    end
  end
end
