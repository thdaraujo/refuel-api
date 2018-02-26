defmodule RefuelAPIWeb.Router do
  use RefuelAPIWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", RefuelAPIWeb do
    pipe_through :api

    post "/sign_up", UserController, :create
  end
end
