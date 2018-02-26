defmodule RefuelAPIWeb.Router do
  use RefuelAPIWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RefuelAPIWeb do
    pipe_through :api
  end
end
