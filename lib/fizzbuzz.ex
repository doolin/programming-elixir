defmodule Fizzbuzz do
  def upto(n) when n > 0, do: _downto(n, [])

  defp _downto(0, result), do: result

  defp _downto(current, result) do
    next_answer = 
      cond do
        rem(current, 3) == 0 and rem(current, 5) == 0 ->
          "fizzbuzz"
      end
  end
end
