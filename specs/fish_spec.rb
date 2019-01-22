require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")

class TestFish < MiniTest::Test


  def setup
    @fish = Fish.new("Jackie")
  end


  def test_check_if_fish_exists
    assert_equal("Jackie", @fish.name)
  end


end
