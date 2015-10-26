class BuildingLot < ActiveRecord::Base
  belongs_to :buildings
  belongs_to :lots
end
