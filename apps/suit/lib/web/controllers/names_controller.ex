defmodule Suit.Web.NamesController do
  import Plug.Conn
  alias Suit.NamesAgent
  alias Jason

  @type plug_conn :: %Plug.Conn{}

  @spec get(plug_conn()) :: plug_conn()
  def get(conn) do
    names = NamesAgent.list_all() |> Jason.encode!()
    
    conn
    |> send_resp(200, names)
  end

  @spec post(plug_conn()) :: plug_conn()
  def post(conn) do
    name = conn.body_params["value"]
    NamesAgent.include([name])

    conn
    |> send_resp(200, "deu bom")
  end
end
