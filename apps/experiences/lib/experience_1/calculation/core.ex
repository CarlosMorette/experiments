defmodule Calculation.Core do
  def simple do
    quote do
      import Calculation.SimpleFunctions
    end
  end

  def complex do
    quote do
      import Calculation.ComplexFunctions
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
