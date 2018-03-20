defmodule Users do
  use GenServer

  def start_link(users \\ []) do
    GenServer.start_link(__MODULE__, users, name: __MODULE__)
  end

  def list do
    GenServer.call(__MODULE__, :list_users)
  end

  def add(user) do
    GenServer.call(__MODULE__, {:add_user, user})
  end

  ###
  # GenServer Implementation
  ###

  def handle_call({:add, new_user}, _from, users) do
    {:reply, new_user, [new_user | users] }
  end

  def handle_call(:list, _from, users) do
    {:reply, users, users}
  end
end
