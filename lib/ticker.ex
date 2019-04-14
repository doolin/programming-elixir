defmodule Ticker do

  @interval 2000 # 2 secs
  @name     :ticker

  def start do
    pid = spawn(__MODULE__, :generator, [[]]])
    :global.register_name(@name, pid)
  end
end
