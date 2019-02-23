defmodule FizzBuzzTest do
  use ExUnit.Case

  test "fizzes" do
    actual = FizzBuzz.upto(3)
    expected = [1, 2, "fizz"]
    assert expected == actual
  end
end
