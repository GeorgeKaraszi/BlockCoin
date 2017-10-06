# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :blocky_web,
  namespace: BlockyWeb

# Configures the endpoint
config :blocky_web, BlockyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JiceGyQsBSJ9Z7BT5ZMghOOFhLAvhJcwiabaKoCB7BWPSnrGLGqTGy9GxqtHCP6Y",
  render_errors: [view: BlockyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BlockyWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :blocky_web, :generators,
  context_app: :blocky

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
