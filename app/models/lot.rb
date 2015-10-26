class Lot < ActiveRecord::Base
  has_many :building_lots
  has_many :buildings, through: :building_lots
end
