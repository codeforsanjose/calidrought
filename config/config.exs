# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :calidrought,
  ecto_repos: [Calidrought.Repo]

# Configures the endpoint
config :calidrought, Calidrought.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "n8H0x6gOnlxaWcHFW/ezDB0h1+z3Y6mNvkqbSv+q/UMbMQ5lAFyVQgajAc5PLp6N",
  render_errors: [view: Calidrought.ErrorView, accepts: ~w(json)],
  pubsub: [name: Calidrought.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :format_encoders,
"json-api": Poison

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
