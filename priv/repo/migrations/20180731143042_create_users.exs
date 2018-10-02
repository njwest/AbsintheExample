defmodule AbsintheExample.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_names, :string
      add :surname, :string
      add :email, :string
      add :password_hash, :string

      timestamps(type: :timestamptz)
    end

    create unique_index(:users, [:email])
  end
end
