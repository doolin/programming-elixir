defmodule ParallelTest do
  use ExUnit.Case
  doctest Parallel

  describe "page 2, spawning processes" do
    test 'spawn to square 1..5' do
      expected = [1, 4, 9, 16, 25]
      assert Parallel.pmap(1..5, &(&1 * &1)) == expected
    end
  end
end
