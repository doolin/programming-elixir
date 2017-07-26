# code for chapter 6 exercises
defmodule Chapter6 do
end

defmodule Chop do
  @actual 273

  def guess(@actual, range), do: @actual

  def guess(actual, range) do

    # IO.puts "\n ---> current guess: #{actual}"
    # IO.puts "---> range.first: #{range.first}"
    # IO.puts "---> range.last: #{range.last}"


    if actual < @actual do
      # IO.puts "less than block"
      first = actual + 1
      # IO.puts "\n ---> first: #{first}"
      nextguess = div(range.last+first, 2)
      # IO.puts "nextguess: #{nextguess}"
      guess(nextguess, first..range.last)

    else
      # IO.puts "greater than block"
      last = actual - 1
      nextguess = div(range.first+last, 2)
      # IO.puts "nextguess: #{nextguess}"
      guess(nextguess, (range.first..last))
    end
  end

  def upper(range) do
    div(range.last, 2) + 1
  end
end
