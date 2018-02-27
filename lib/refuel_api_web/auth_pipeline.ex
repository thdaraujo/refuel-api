defmodule RefuelAPI.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :RefuelAPI,
  module: RefuelAPI.Guardian,
  error_handler: RefuelAPI.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
