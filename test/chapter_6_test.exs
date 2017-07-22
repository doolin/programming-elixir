defmodule Chapter6Test do
  use ExUnit.Case

  describe "factorial" do
    test "0 factorial is 1" do
      assert Factorial.of(0) == 1
    end

    test "3 factorial is 6" do
      assert Factorial.of(3) == 6
    end
  end

  describe "sum" do
    test "sum 0 to 0" do
      assert Sum.of(0) == 0
    end

    test "sum 0 to 1" do
      assert Sum.of(1) == 1
    end

    test "sum 1 to 3" do
      assert Sum.of(3) == 6
    end
  end
end
