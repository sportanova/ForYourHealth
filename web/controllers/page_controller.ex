import Map
import String

defmodule ForYourHealth.PageController do
  use ForYourHealth.Web, :controller

  def index(conn, _params) do
    render conn, "health.html"
  end

  def quiz(conn, _params) do
    {:ok, data, _conn_details} = Plug.Conn.read_body(conn)
    int = case fetch!(conn.params, "horas") do
      "" -> 0
      i -> to_integer i
    end

    case int do
      i when i < 2 ->
        IO.puts "============== YEP"
        render conn, "quiz.html", message: "Ejercete mas!"
      i when i >= 2 and i < 10 ->
        IO.puts "============== YEP"
        render conn, "quiz.html", message: "Eso es bueno"
      i when i >= 10 ->
        # IO.puts x
        render conn, "quiz.html", message: "Demasiado exercisio, relajate"
      _ -> render conn, "health.html"
    end
  end

  def questions(conn, _params) do
    {:ok, data, _conn_details} = Plug.Conn.read_body(conn)
    IO.puts data
    json conn, ["a","b","c"]
  end
end
