defmodule Context do
  use Calculation.Core, :simple

  def show do
    sum(1, 2) |> IO.inspect()
    subtract(11, 2) |> IO.inspect()
  end
end
