class Building < ActiveRecord::Base
  has_many :visits
  has_many :building_lots
  has_many :lots, through: :building_lots
end
