defmodule Spawn4 do
  def greet do
    receive do
      {sender, msg} ->
        send sender, { :ok, "Hello, #{msg}" }
        greet()
    end
  end
end

pid = spawn(Spawn4, :greet, [])
send pid, {self(), "World!"}
receive do
  {:ok, message} ->
    IO.puts message
end
