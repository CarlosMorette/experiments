defmodule Funny.ErrorMessage do
  def error_message(message \\ "") do
    Jason.encode!(message)
  end
end
