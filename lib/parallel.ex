defmodule Parallel do
  @doc """
  pmap

  ## Examples

      iex> Parallel.pmap(1..5, &(&1 * &1))
      [1, 4, 9, 16, 25]

  """
   def pmap(collection, func) do
    collection
    |> Enum.map(&(Task.async(fn -> func.(&1) end)))
    |> Enum.map(&Task.await/1)
  end
end
