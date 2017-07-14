defmodule Exercise51Test do
  use ExUnit.Case

  describe "Exercise:Anonymous Functions-3" do
    test "create list_concat function" do
      list_concat = fn (a, b) ->
        [a, b] |> List.flatten
      end
      assert list_concat.([:a, :b], [:c, :d]) == [:a, :b, :c, :d]
    end
  end
end
