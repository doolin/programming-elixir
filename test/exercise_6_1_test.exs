# Page 47.
defmodule Times do
  def double(n) do
    n * 2
  end

  def triple(n), do: n * 3
end

defmodule Exercise61Test do
  use ExUnit.Case

  describe "Exercise:Modules and Named Functions: 6" do
    test "Times module" do
      assert Times.double(2) == 4
    end

    # Page 48.
    test "raises on bad argument" do
      assert_raise ArithmeticError, fn ->
        Times.double("two")
      end
    end
  end

  describe "add triple function" do
    test "triple" do
      assert Times.triple(2) == 6
    end
  end
end
