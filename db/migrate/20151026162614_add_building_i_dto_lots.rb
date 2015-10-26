class AddBuildingIDtoLots < ActiveRecord::Migration
  def change
    add_column :lots, :building_id, :integer
  end
end
