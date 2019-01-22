require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class TestBear < MiniTest::Test


  def setup
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Herbert")
    @fish_3 = Fish.new("Jazzy")

    @bear = Bear.new("Yogi", "Grizzly")
  end


  def test_check_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_hunt_fish
    @river = River.new("Amazon")
    @river.add_fish(@fish_1)  # adding fishes to my river
    @river.add_fish(@fish_2)
    @river.add_fish(@fish_3)
    @bear.hunt_fish(@river) #bear is hunting
    assert_equal(1, @bear.food_count)
    assert_equal(2, @river.fish_count)
  end

  def test_can_roar
    assert_equal("ROAR", @bear.can_roar)
  end
end
