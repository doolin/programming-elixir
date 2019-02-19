defmodule FiizBuzzTest do
  use ExUnit.Case

  it "fizzes" do
    actual = FizzBuzz.upto(3)
    expected = [1, 2, "fizz"]
    assert expected == actual
  end
end
