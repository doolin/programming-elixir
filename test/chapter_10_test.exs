defmodule Chapter10Test do
  use ExUnit.Case

  test 'some list' do
    list = [1, 2, 3, 4, 5]
           |> Enum.map(&(&1*&1))
    assert list == [1, 4, 9, 16, 25]
  end

  test 'empty comprehension' do
    result = Enum.into 1..5, []
    assert result == [1, 2, 3, 4, 5]
  end

  test 'append to comprehension' do
    result = Enum.into 1..3, [101]
    assert result == [101, 1, 2, 3]
  end

  test 'comprehension for squaring' do
    foo = for x <- [1, 2, 3, 4, 5], do: x * x
    assert x = [1, 4, 9, 16, 25]
    assert foo = [1, 4, 9, 16, 25]
  end
end
