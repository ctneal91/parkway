class AddBuildingLotIDtoBuildingsandLots < ActiveRecord::Migration
  def change
    add_column :buildings, :building_lot_id, :integer
    add_column :lots, :building_lot_id, :integer
  end
end
