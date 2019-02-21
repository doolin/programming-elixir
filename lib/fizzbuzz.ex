defmodule Fizzbuzz do
  def upto(n) when n > 0, do: _downto(n, [])

  defp _downto(0, result), do: result
end
