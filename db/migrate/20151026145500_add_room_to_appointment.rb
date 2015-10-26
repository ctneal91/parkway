class AddRoomToAppointment < ActiveRecord::Migration
  def change
    remove_column :appointments, :roomnumber_id, :integer
    add_column :appointments, :room_id, :integer
  end
end
