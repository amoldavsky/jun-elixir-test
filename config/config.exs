# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :jun_elixir_test, JunElixirTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+ccuuaLT4fxXocNTKmBn26hBHbQ2097DHzWvf+0DHbx3SIrl4MUwP4K+N+46SSCH",
  render_errors: [view: JunElixirTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: JunElixirTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
