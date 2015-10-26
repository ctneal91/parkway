class Room < ActiveRecord::Base
  belongs_to :buildings
  has_many :visits
end
