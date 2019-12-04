defmodule HelloWeb.WorldController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # this is magically tied to HelloWeb.WorldView.render/2
    render(conn, "index.html")
  end
end
