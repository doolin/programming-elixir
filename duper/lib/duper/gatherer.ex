defmodule Duper.Gatherer do
  use GenServer

  @me Gatherer

  # api

  def start_link(worker_count) do
    GenServer.start_link(__MODULE__, worker_count, name: @me)
  end

  def done() do
    Generver.cast(@me, { :result, path, hash })
  end

  def result(path, hash) do
    GenServer.cast(@me, { :result, path, hash })
  end

  # server

  def init(worker_count) do
    { :ok, worker_count }
  end
end
