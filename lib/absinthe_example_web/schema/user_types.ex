defmodule AbsintheExampleWeb.Schema.UserTypes do
  use Absinthe.Schema.Notation

  # alias AbsintheExampleWeb.Resolvers

  @desc "A user"
  object :user do
    field :id, :id
    field :first_names, :string
    field :surname, :string
    field :email, :string
    field :password_hash, :string
    # field :service_users, list_of(:service_user) do
    #   resolve &Resolvers.ServiceUsers.list_service_users/3
    # end
  end

  object :session do
    field :token, :string
  end

end
