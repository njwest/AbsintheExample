# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     AbsintheExample.Repo.insert!(%AbsintheExample.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


# alias AbsintheExample.{Accounts, Content, Repo}
#
# user =
#   %Accounts.User{}
#   |> Accounts.User.changeset(%{name: "Pancho Villa", email: "panchito@panchovilla.net"})
#   |> AbsintheExample.Repo.insert!
#
# Content.create_post(user, %{title: "Test Post", body: "Lorem Ipsum", published_at: ~N[2017-10-26 10:00:00]})
