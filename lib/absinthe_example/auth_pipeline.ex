defmodule AbsintheExample.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :absinthe_example,
  module: AbsintheExample.Guardian,
  error_handler: AbsintheExample.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader, realm: "Bearer"
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
