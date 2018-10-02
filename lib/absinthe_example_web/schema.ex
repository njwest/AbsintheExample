defmodule AbsintheExampleWeb.Schema do
  use Absinthe.Schema
  import_types AbsintheExampleWeb.Schema.UserTypes
  import_types Absinthe.Type.Custom

  alias AbsintheExampleWeb.Resolvers

  query do

    @desc "Get a user"
    field :user, :user do
      arg :id, non_null(:id)
      resolve &Resolvers.Users.find_user/3
    end

  end

  mutation do

    @desc "Create a user, return JWT"
    field :create_user, type: :session do
      arg :first_names, non_null(:string)
      arg :surname, non_null(:string)
      arg :email, non_null(:string)
      arg :password, non_null(:string)
      arg :password_confirmation, non_null(:string)

      resolve &Resolvers.Users.create_user/3
    end

    @desc "Log in a user, return JWT"
    field :login, type: :session do
      arg :email, non_null(:string)
      arg :password, non_null(:string)

      resolve &Resolvers.Users.login/2
    end

  end

end
