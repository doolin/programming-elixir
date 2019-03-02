defmodule FizzbuzzPattern do
  def upto(n) when n > 0, do: 1..n |> Enum.map(&fizzbuzz/1)

  defp fizzbuzz(n), do: _fizzword(n, rem(n, 3), rem(n, 5))

  defp _fizzword(n, 0, 0), do: "fizzbuzz"
  defp _fizzword(n, 0, _), do: "fizz"
  defp _fizzword(n, _, 0), do: "buzz"
  defp _fizzword(n, _, _), do: n
end
