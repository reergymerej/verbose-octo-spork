defmodule HelloWeb.Router do
  use HelloWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HelloWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/hello", HelloController, :index
    get "/hello/:messenger", HelloController, :show
    get "/world", WorldController, :index
    get "/flash-me", FlashController, :index
    get "/flash-me/:target", FlashController, :index
    resources "/users", UserController, only: [:index, :show]
    resources "/comments", CommentController, except: [:delete]
    resources "/words", WordController
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloWeb do
  #   pipe_through :api
  # end
end
