class RemoveBuildingLotIDfromLots < ActiveRecord::Migration
  def change
    remove_column :lots, :building_lot_id, :integer
  end
end
