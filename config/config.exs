# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_graphql_api,
  ecto_repos: [PhxGraphqlApi.Repo]

# Configures the endpoint
config :phx_graphql_api, PhxGraphqlApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pXni53QCt9bwoA9dj1t+ivhKMa2FSCc9Qm+lrajrErEozLttsArmlA0N2Fj/TLs7",
  render_errors: [view: PhxGraphqlApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhxGraphqlApi.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "Ft9acpXb"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
