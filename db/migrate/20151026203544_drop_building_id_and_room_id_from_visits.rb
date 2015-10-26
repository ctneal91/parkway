class DropBuildingIdAndRoomIdFromVisits < ActiveRecord::Migration
  def change
    remove_column :visits, :building_id, :integer
    remove_column :visits, :room_id, :integer
  end
end
