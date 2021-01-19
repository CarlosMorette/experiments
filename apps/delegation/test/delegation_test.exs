defmodule DelegationTest do
  use ExUnit.Case
  doctest Delegation

  test "greets the world" do
    assert Delegation.hello() == :world
  end
end
