defmodule Duper.Gatherer do
  use GenServer

  @me Gatherer

  def start_link(worker_count) do
    GenServer.start_link(__MODULE__, worker_count, name: @me)
  end
end
