defmodule AbsintheExampleWeb.Router do
  use AbsintheExampleWeb, :router

  alias AbsintheExample.Guardian
  alias AbsintheExample.GQLContext

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :jwt_authenticated do
    plug Guardian.AuthPipeline
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: AbsintheExampleWeb.Schema

    forward "/", Absinthe.Plug,
      schema: AbsintheExampleWeb.Schema

  end

end
