defmodule FizzbuzzPatternTest do
  use ExUnit.Case

  describe "fizzbuzz with pattern matching" do
    test "for 3" do
      result = FizzbuzzPattern.upto(3)
      assert [1, 2, "fizz"] == result
    end
  end
end
