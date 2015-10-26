class AddOccupancyRatetoLots < ActiveRecord::Migration
  def change
    add_column :lots, :occupancy_rate, :integer
  end
end
