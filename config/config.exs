# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :for_your_health,
  ecto_repos: [ForYourHealth.Repo]

# Configures the endpoint
config :for_your_health, ForYourHealth.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YbFLiZQqn1zIZs+7R9eolYT8MeC71ycC2sygJauXYNDB/ScDZu/Dxp0ydUqPkNo2",
  render_errors: [view: ForYourHealth.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ForYourHealth.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
