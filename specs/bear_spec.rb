require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class TestBear < MiniTest::Test


  def setup
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Herbert")

    @bear = Bear.new("Yogi", "Grizzly")
  end


  def test_check_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_hunt_fish
    @river = River.new("Amazon")
    @river.number_of_fish(@fish_1)
    @river.number_of_fish(@fish_2)
    @bear.hunt_fish(river)
    assert_equal(1, @bear.food_count)
    assert_equal(1, @river.fish_count)
  end

end
