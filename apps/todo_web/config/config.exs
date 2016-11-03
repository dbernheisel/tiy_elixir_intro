# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :todo_web,
  ecto_repos: []

# Configures the endpoint
config :todo_web, TodoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vYCevdx+ow93y10FEMNkgJGzrivQvajUEtKxF5s5Am1b1975yl2Aee7xikvh2mQj",
  render_errors: [view: TodoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TodoWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
