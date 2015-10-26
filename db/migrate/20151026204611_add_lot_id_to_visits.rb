class AddLotIdToVisits < ActiveRecord::Migration
  def change
    add_column :visits, :lot_id, :integer
  end
end
