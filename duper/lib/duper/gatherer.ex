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

  def handle_cast(:done, _worker_count = 1) do
    report_results()
    System.halt()
  end

  def handle_cast(:done, worker_count) do
    { :noreply, worker_count - 1 }
  end
end
