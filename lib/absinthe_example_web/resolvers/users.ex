defmodule AbsintheExampleWeb.Resolvers.Users do
  alias AbsintheExample.Accounts
  alias AbsintheExample.Accounts.User
  alias AbsintheExample.Guardian


  def login(params, _info) do
    %{email: email, password: password} = params

    case Accounts.token_sign_in(email, password) do
      {:ok, token, _} ->
        {:ok, %{token: token}}
      _ ->
        {:error, :unauthorized}
    end
  end

  def create_user(_parent, args, _resolution) do
    with {:ok, %User{} = user} <- Accounts.create_user(args),
       {:ok, token, _claims} <- Guardian.encode_and_sign(user) do
        {:ok, %{token: token}}
      else
        _->
           {:error, :unauthorized}
    end
  end

  def find_user(_parent, %{id: id}, _resolution) do
    case AbsintheExample.Accounts.get_user!(id) do
      nil ->
        {:ok, nil}
      user ->
        {:ok, user}
    end
  end

end
