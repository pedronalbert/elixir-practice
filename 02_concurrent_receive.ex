defmodule ConcurrentReceive do
  def greet do
    receive do
      {msg} -> IO.puts(msg)
    end
  end
end
