defmodule RefuelAPIWeb.FallbackController do
  @moduledoc """
  Translates controller action results into valid `Plug.Conn` responses.

  See `Phoenix.Controller.action_fallback/1` for more details.
  """
  use RefuelAPIWeb, :controller

  def call(conn, {:error, %Ecto.Changeset{} = changeset}) do
    conn
    |> put_status(:unprocessable_entity)
    # |> render(RefuelAPIWeb.ChangesetView, "error.json", changeset: changeset)
    |> render(RefuelAPIWeb.ErrorView, :"422")
  end

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> render(RefuelAPIWeb.ErrorView, :"404")
  end
end
