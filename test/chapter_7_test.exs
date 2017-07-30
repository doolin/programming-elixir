defmodule MyList do
  def sum([]), do: 0
  def sum([head|tail]) do
    head + sum(tail)
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
end
