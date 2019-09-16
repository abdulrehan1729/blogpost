# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :blog_post,
  ecto_repos: [BlogPost.Repo]

# Configures the endpoint
config :blog_post, BlogPostWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "16tsnEudacfrWueZ4mUkfM7aGS3lbPB0YHFfXi1tWQFuT0Jgnua/CrwAZjhcYBx3",
  render_errors: [view: BlogPostWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BlogPost.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
