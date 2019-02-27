defmodule FizzbuzzPattern do
  def upto(n) when n > 0, do: 1..n |> Enum.map(&fizzbuzz/1)
end
