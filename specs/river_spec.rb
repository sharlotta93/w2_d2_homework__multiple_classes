require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")


class TestRiver < MiniTest::Test


  def setup
    @fish_1 = Fish.new("Nemo")
    @fish_2 = Fish.new("Herbert")
    @fish_3 = Fish.new("Barry")

    @river = River.new("Amazon")
  end


  def test_check_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_add_fish_to_river
    result = @river.add_fish(@fish_1)

    assert_equal(1, result.length)
  end

  def test_fish_count
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    assert_equal(2, @river.fish_count)
  end

end
