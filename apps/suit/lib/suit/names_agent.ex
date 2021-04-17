defmodule Suit.NamesAgent do
  use Agent

  @type name :: String.t()

  def start_link(_arg) do
    Agent.start_link(fn -> [] end, name: __MODULE__)
  end

  @spec list_all() :: [name]
  def list_all do
    Agent.get(__MODULE__, &(&1))
  end

  @spec include([name()]) :: :ok
  def include(new_names) when is_list(new_names) do
    Agent.update(__MODULE__, fn ln ->
      ln ++ new_names
    end)
  end
end
