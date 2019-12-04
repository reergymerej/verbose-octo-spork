defmodule HelloWeb.WordController do
  use HelloWeb, :controller


  def index(conn, _params) do
    render(conn,
      "index.html",
      foo: [
        "here",
        "more",
        "words"
      ]
    )
  end

  def new(conn, _params) do
    render(conn, "new.html")
  end
end
