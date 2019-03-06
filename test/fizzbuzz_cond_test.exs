defmodule FizzbuzzCondTest do
  use ExUnit.Case

  test "up to 5" do
    actual = FizzbuzzCond.upto(5)
    expected = [1, 2, "Fizz", 4, "Buzz"]

    assert expected == actual
  end
end
