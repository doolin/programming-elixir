defmodule FizzbuzzTest do
  use ExUnit.Case

  test "fizzes" do
    actual = Fizzbuzz.upto(3)
    expected = [1, 2, "fizz"]
    assert expected == actual
  end

  describe "fizzbuzz with pattern matching" do
    test "for 15" do
      assert 1 == 0
    end
  end
end
