defmodule HelloWeb.WordView do
  use HelloWeb, :view

  # instead of calling this, I can pass it in with assigns
  def get_words() do
    ["foo", "bar", "baz"]
  end
end
