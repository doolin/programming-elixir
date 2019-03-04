defmodule FizzbuzzCondTest do
  use ExUnit.Case

  test "up to 5" do
    actual = FizzbuzzCond.upto(5)
    expected = [1, 2, "fizz", 4, "buzz"]

    assert expected == actual
  end
end
