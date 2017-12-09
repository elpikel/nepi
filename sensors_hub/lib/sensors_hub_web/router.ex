defmodule SensorsHubWeb.Router do
  use SensorsHubWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
    resources "/hydrations", HydrationController, except: [:new, :index]
  end

  scope "/", SensorsHubWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", SensorsHubWeb do
  #   pipe_through :api
  # end
end