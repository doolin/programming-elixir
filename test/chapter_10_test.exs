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
    # result = Enum.merge 1..3, [101]
    assert result == [101, 1, 2, 3]
  end

  test 'comprehension for squaring' do
    foo = for x <- [1, 2, 3, 4, 5], do: x * x
    assert x = [1, 4, 9, 16, 25]
    assert foo = [1, 4, 9, 16, 25]
  end

  test 'nested generators' do
    xy = for x <- [1, 2], y <- [5, 6], do: {x, y}
    assert xy == [{1, 5}, {1, 6}, {2, 5}, {2, 6}]
  end

  test 'swap keys and values, p. 112' do
    reports = [dallas: :hot, minneapolis: :cold, dc: :muggy, la: :smoggy]
    swapped = for { city, weather } <- reports, do: { weather, city }
    assert swapped == [hot: :dallas, cold: :minneapolis, muggy: :dc, smoggy: :la]
  end

  test 're-using variables in generators' do
    min_maxes = [{1, 4}, {2, 3}, {10, 15}]
    result = for {min, max} <- min_maxes, n <- min..max, do: n
    assert result == [1, 2, 3, 4, 2, 3, 10, 11, 12, 13, 14, 15]
  end

  test 'list pairs multiple of 10s' do
    first8 = [1, 2, 3, 4, 5, 6, 7, 8]
    pairs = for x <- first8, y <- first8, x >= y, rem(x*y, 10) == 0, do: { x, y }
    assert pairs == [{5, 2}, {5, 4}, {6, 5}, {8, 5}]
  end

  test 'do comprehension on bits' do
    result = for << ch <- "hello" >>, do: ch
    assert result == 'hello'
  end

  test 'do another comprehension on bits' do
    result = for << ch <- "hello" >>, do: <<ch>>
    assert result == ["h", "e", "l", "l", "o"]
  end

  test 'whoa...' do
    assert [104, 101, 108, 108, 111] == 'hello'
  end
end
