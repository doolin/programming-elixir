defmodule FizzbuzzPattern do
  use ExUnit.Case

  describe "fizzbuzz with pattern matching" do
    test "for 3" do
      FizzbuzzPattern.upto(3)
    end
  end
end
