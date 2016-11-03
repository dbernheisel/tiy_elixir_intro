use Mix.Config

config :todo_core, TodoCore.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "todo_core_test",
  hostname: "localhost"
