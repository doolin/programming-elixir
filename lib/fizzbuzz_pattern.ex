defmodule FizzbuzzPattern do
  def upto(n) when n > 0, do: 1..n |> Enum.map(&fizzbuzz/1)

  def fizzbuzz(n), do: _fizzword(n, rem(n, 3), rem(n, 5))
end
