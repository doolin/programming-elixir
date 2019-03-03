defmodule Chapter12Test do
  use ExUnit.Case

  test "syntax for if-else statement" do
    result =
      if 1 == 1 do
        "OK"
      else
        "error"
      end
    assert result == "OK"
  end
end
