defmodule AssignmentTest do
  use ExUnit.Case

  describe "=" do
    test "4 = a" do
      a = 4
      assert(4 = a)
    end
  end
end
