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

  def test_fish_add_to_stock
    result = @river.number_of_fish(@fish_1)

    assert_equal(1, result.length)
  end
end
