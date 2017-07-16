defmodule Exercise51Test do
  use ExUnit.Case

  describe "Exercise:Anonymous Functions-3" do
    test "create list_concat function" do
      list_concat = fn (a, b) ->
        [a, b] |> List.flatten
      end
      assert list_concat.([:a, :b], [:c, :d]) == [:a, :b, :c, :d]
    end

    test "create sum function" do
      sum = fn (a, b, c) ->
        a + b + c
      end
      assert sum.(1, 2, 3) == 6
    end

    test "pair_tuple_to_list function" do
      pair_tuple_to_list = fn (tuple) ->
        tuple |> Tuple.to_list
      end
      assert pair_tuple_to_list.({1, 2}) == [1, 2]
    end
  end
end
