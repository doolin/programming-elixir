defmodule Chapter11Test do
  use ExUnit.Case

  test "character list sigil ~C" do
    actual = ~C[1\n2#{1+2}]
    expected = '1\\n2\#{1+2}'
    assert actual == expected
  end

  test "character list sigil with interpolation" do
    actual = ~c[1\n2#{1+2}]
    expected = '1\n23'
    assert actual == expected
  end

  test "character list as a string" do
    actual = ~S[1\n2#{1+2}]
    expected = "1\\n2\#{1+2}"
    assert actual == expected
  end

  test "date sigil" do
    actual = ~D<1999-12-31>
    expected = ~D[1999-12-31]
    assert actual == expected
  end

  describe "bitwise operations" do
    test "bit and byte size" do
      b = << 1, 2, 3 >>
      assert bit_size(b) == 24
      assert byte_size(b) == 3
    end

    test "bitwise modifiers" do
      b = << 1::size(2), 1::size(3) >>
      assert b == << 9::size(5) >>
      assert byte_size(b) == 1
      assert bit_size(b) == 5
    end

    test "string shenanigans" do
      str = "∂x/∂y"
      assert String.length(str) == 5
    end
  end
end
