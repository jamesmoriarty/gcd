require "test_helper"

class TestGCD < Minitest::Test
  describe "GCD" do
    it ".gcd(a,b)" do
      assert_equal [1, 0],   Math.gcd(0, 0)
      assert_equal [0, 1],   Math.gcd(0, 1)
      assert_equal [0, 1],   Math.gcd(1, 1)
      assert_equal [23, -1], Math.gcd(7, 160)
    end
  end
end
