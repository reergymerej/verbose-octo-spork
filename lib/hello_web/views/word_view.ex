defmodule HelloWeb.WordView do
  use HelloWeb, :view

  def get_words() do
    ["foo", "bar", "baz"]
  end
end
