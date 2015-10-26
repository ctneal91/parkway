require "test_helper"

class BuildingLotTest < ActiveSupport::TestCase
  def building_lot
    @building_lot ||= BuildingLot.new
  end

  def test_valid
    assert building_lot.valid?
  end
end
