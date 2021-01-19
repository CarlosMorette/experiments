defmodule Delegation.Main do
  alias Delegation.Operations

  defdelegate sum(a, b), to: Operations

  defdelegate sub(a, b), to: Operations
end
