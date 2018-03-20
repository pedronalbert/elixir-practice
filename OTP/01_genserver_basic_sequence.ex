defmodule SequenceServer do
  @moduledoc """
    iex(one@F2A68HM-H)20> {:ok, pid} = GenServer.start_link(SequenceServer, 1)
    {:ok, #PID<0.135.0>}
    iex(one@F2A68HM-H)21> GenServer.call(pid, :next_number)
    1
    iex(one@F2A68HM-H)22> GenServer.call(pid, :next_number)
    2
  """
  use GenServer

  def handle_call(:next_number, _from, current_number) do
    {:reply, current_number, current_number + 1}
  end

  # Increment without reply
  def handle_cast(:increment_sillent, current_number) do
    { :noreply, current_number + 1}
  end
end
