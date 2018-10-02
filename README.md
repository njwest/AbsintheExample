# AbsintheExample

The master branch of this repo contains an Absinthe schema.ex error for r&d purposes.

## Error Details

On Line 5 of `lib/absinthe_example_web/schema.ex` is an import of a type that does not exist:

```elixir
import_types AbsintheExampleWeb.Schema.NonexistentType
```

This import causes a vague error: `...Router.Helpers is not loaded and could not be found`.

Full error:

```shell
== Compilation error in file lib/absinthe_example_web/views/error_view.ex ==
** (CompileError) lib/absinthe_example_web/views/error_view.ex:2: module AbsintheExampleWeb.Router.Helpers is not loaded and could not be found
    expanding macro: AbsintheExampleWeb.__using__/1
    lib/absinthe_example_web/views/error_view.ex:2: AbsintheExampleWeb.ErrorView (module)
    (elixir) expanding macro: Kernel.use/2
    lib/absinthe_example_web/views/error_view.ex:2: AbsintheExampleWeb.ErrorView (module)
    (elixir) lib/kernel/parallel_compiler.ex:206: anonymous fn/4 in Kernel.ParallelCompiler.spawn_workers/6
```

## GraphiQL

Mutation examples:

```graphql
mutation CreateUser{
	createUser(
    first_names:"John",
    surname: "Doe",
    email:"foo@bar.baz",
    password: "scoobyDoo",
    password_confirmation: "scoobyDoo"
   	) {
	  token
	}
}

mutation UserLogin{
  login(email: "foo@bar.baz", password: "scoobyDoo") {
    token
  }
}
```

## Installing deps + starting server

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
