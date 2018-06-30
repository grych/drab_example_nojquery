# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :drab_example_nojquery, DrabExampleNojquery.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WhNavd3D8s6GXB1Mw2ptXHKkBNSCmpU0rXETOY3UhASXUTZGUu3mCBwdVnL2W1xL",
  render_errors: [view: DrabExampleNojquery.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DrabExampleNojquery.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :drab, DrabExampleNojquery.Endpoint,
  otp_app: :drab_example_nojquery

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
