class Visit < ActiveRecord::Base
  belongs_to :buildings
  belongs_to :users
  belongs_to :room
end
