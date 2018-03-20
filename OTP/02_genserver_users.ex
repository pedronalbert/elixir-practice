defmodule UsersDB do
  use GenServer

  def handle_call({:add_user, new_user}, _from, users) do
    {:reply, new_user, [new_user | users] }
  end

  def handle_call(:list_users, _from, users) do
    {:reply, users, users}
  end
end
