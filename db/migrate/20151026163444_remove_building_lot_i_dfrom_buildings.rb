class RemoveBuildingLotIDfromBuildings < ActiveRecord::Migration
  def change
    remove_column :buildings, :building_lot_id, :integer
    add_column :buildings, :lot_id, :integer
  end
end
