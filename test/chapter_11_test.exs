defmodule Chapter11Test do
  use ExUnit.Case

  test "character list sigil ~C" do
    actual = ~C[1\n2#{1+2}]
    expected = '1\\n2\#{1+2}'
    assert actual == expected
  end
end
