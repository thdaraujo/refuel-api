# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :refuel_api,
  namespace: RefuelAPI,
  ecto_repos: [RefuelAPI.Repo]

# Configures the endpoint
config :refuel_api, RefuelAPIWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LVGHRdbOcyZNIGOhcY1cd7+kCgqEholAZLk47DbgPW9w84rK59p3OQ84h6vtWivz",
  render_errors: [view: RefuelAPIWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: RefuelAPI.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Guardian config
config :refuel_api, RefuelAPI.Guardian,
       issuer: "refuel_api",
       secret_key: "D4OckXwoR+DWcX2ekqc04Oxs7T2kR8p5He8eu7mSt5UcPnfkKqY1HYJJdX6Y4CMh"
