require "test_helper"

class BuildingTest < ActiveSupport::TestCase
  def building
    @building ||= Building.new
  end

  def test_valid
    assert building.valid?
  end
end
