# code for chapter 6 exercises
defmodule Chapter6 do
end

defmodule Chop do
  @actual 273

  def guess(@actual, range), do: @actual

  def guess(actual, range) do

    midpoint = div(range.last, 2)

    if @actual < midpoint do
      first = midpoint - 1
      actual = div(range.last-first, 2)
      IO.puts "less than: #{actual}"
      guess(actual, first..range.last)
    else
      last = midpoint + 1
      actual = div(last-range.first, 2)
      IO.puts "greater than: #{actual}"
      guess(actual, (range.first..last))
    end
  end

  def upper(range) do
    div(range.last, 2) + 1
  end
end
