defmodule Exercise54Test do
  use ExUnit.Case

  describe "Exercise:Anonymous Functions-4" do
    test "function prefix" do
      prefix = fn (name) ->
        fn ->
          "You know nothing, #{name}"
        end
      end
      assert prefix.("Jon Snow").() == "You know nothing, Jon Snow"
    end
  end
end
