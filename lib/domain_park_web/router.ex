defmodule DomainParkWeb.Router do
  use DomainParkWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {DomainParkWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  # pipeline :api do
  #   plug :accepts, ["json"]
  # end

  scope "/", DomainParkWeb do
    pipe_through :browser

    # catch em all
    get "/*path", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", DomainParkWeb do
  #   pipe_through :api
  # end
end
