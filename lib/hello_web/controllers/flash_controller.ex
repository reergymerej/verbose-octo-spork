defmodule HelloWeb.FlashController do
  use HelloWeb, :controller

  # This works because the pattern is matched.
  # Specific patterns should be first.
  def index(conn, %{"target" => target}) do
    conn
    |> put_flash(:info, target)
    |> render("index.html")
  end

  # General patterns should be later.
  def index(conn, _params) do
    render(conn, "index.html")
  end
end
