defmodule MyList do
  def sum([]), do: 0
  def sum([head|tail]) do
    head + sum(tail)
  end

  def map([], _func), do: []
  def map([head | tail], func) do
    [func.(head) | map(tail, func)]
  end

  def mapsum(list, func) do
    list |> map(func) |> sum()
  end
end

defmodule Chapter7Test do
  use ExUnit.Case

  describe "sum" do
    test "empty list []" do
      assert MyList.sum([]) == 0
    end

    test "single element value 1 list [1]" do
      assert MyList.sum([1]) == 1
    end

    test "single element value 6 list [6]" do
      assert MyList.sum([6]) == 6
    end

    test "two element list [1, 2]" do
      assert MyList.sum([1, 2]) == 3
    end

    test "three element list [1, 2, 3]" do
      assert MyList.sum([1, 2, 3]) == 6
    end
  end

  describe "map" do
    test "maps a single element list" do
      assert MyList.map([1], &(&1+1)) == [2]
    end

    test "maps a multielement list" do
      assert MyList.map([12, 13], &(&1*&1)) == [144, 169]
    end
  end

  describe "mapsum" do
    test "mapsum a single element list" do
      assert MyList.mapsum([1], &(&1+1)) == 2
    end

    test "mapsum a two element list" do
      assert MyList.mapsum([1, 2], &(&1*&1)) == 5
    end

    test "mapsum a three element list" do
      assert MyList.mapsum([1, 2, 3], &(&1*&1)) == 14
    end
  end
end
