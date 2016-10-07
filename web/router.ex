defmodule ForYourHealth.Router do
  use ForYourHealth.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Plug.Parsers, parsers: [:urlencoded]
    # plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ForYourHealth do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    post "/quiz", PageController, :quiz
  end

  # Other scopes may use custom stacks.
  scope "/api", ForYourHealth do
    pipe_through :api

    post "/questions", PageController, :questions
  end
end
