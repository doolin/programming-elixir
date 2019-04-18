defmodule Sequence.Server do
  use GenServer

  def init(initial_number) do
    { :ok, initial_number }
  end
end
