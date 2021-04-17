defmodule Suit.Web.Router do
  use Plug.Router
  alias Suit.Web.NamesController

  plug :match
  plug Plug.Parsers, parsers: [:json], pass: ["application/json"], json_decoder: Jason
  plug :dispatch

  get "/" do
    try do
      NamesController.get(conn)
    rescue
      _ -> send_resp(conn, 500, "")
    end
  end
    post "/" do
      try do
        NamesController.post(conn)
      rescue
        _ -> send_resp(conn, 500, "")
      end
    end

    match _ do
      send_resp(conn, 404, "")
  end
end
