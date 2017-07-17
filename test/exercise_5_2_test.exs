defmodule Exercise52Test do
  use ExUnit.Case

  def fizzbuzz(0, 0, c) do
    "FizzBuzz"
  end

  def fizzbuzz(a, 0, c) do
    "Buzz"
  end

  def fizzbuzz(0, b, c) do
    "Fizz"
  end

  def fizzbuzz(a, b, c) do
    c
  end

  def fizzbuzz(n) do
    fizzbuzz(rem(n, 3), rem(n, 5), n)
  end

  describe "Exercise:Anonymous Functions-2" do
    test "fizzbuzz" do
      assert fizzbuzz(0, 0, 3) == "FizzBuzz"
      assert fizzbuzz(0, 1, 3) == "Fizz"
      assert fizzbuzz(1, 0, 3) == "Buzz"
      assert fizzbuzz(1, 2, 3) == 3
    end

    test "FizzBuzz with single argument" do
      assert fizzbuzz(15) == "FizzBuzz"
      assert fizzbuzz(5) == "Buzz"
      assert fizzbuzz(3) == "Fizz"
    end
  end
end
