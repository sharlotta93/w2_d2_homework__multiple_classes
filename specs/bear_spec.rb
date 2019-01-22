require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class TestBear < MiniTest::Test


  def setup

    @bear = Bear.new("Yogi", "Grizzly")
  end


  def test_check_bear_type
    assert_equal("Grizzly", @bear.type)
  end

end
