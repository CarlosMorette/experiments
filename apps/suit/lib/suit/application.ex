defmodule Suit.Application do
  use Application
  require Logger
  alias Suit.Web.Router
  alias Suit.NamesAgent

  @port 8080

  @impl true
  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: Router, options: [port: @port]},
      Suit.NamesAgent
    ]

    opts = [strategy: :one_for_one, name: Suit.Supervisor]
    Logger.info("Starting application...")
    Supervisor.start_link(children, opts)
  end
end
