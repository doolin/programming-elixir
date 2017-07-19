defmodule Exercise55Test do
  use ExUnit.Case

  describe "Exercise:Anonymous Functions-5" do
    test "function shortcuts" do
      list = [1, 2, 3, 4]
      result = list |> Enum.map(&(&1+2))
      assert result == [3, 4, 5, 6]
      list |> Enum.map(&IO.inspect(&1))
    end
  end
end
