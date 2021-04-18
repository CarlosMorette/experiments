defmodule Table.Interface do
  @callback init(state :: String.t()) :: :ok

  @callback start(boolean) :: :ok
end
