defmodule SuitTest do
  use ExUnit.Case
  doctest Suit

  test "greets the world" do
    assert Suit.hello() == :world
  end
end
