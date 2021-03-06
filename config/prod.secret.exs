use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :for_your_health, ForYourHealth.Endpoint,
  secret_key_base: "sPl95g7huqp0kXWBar8Kj9RtEQpRuvT2rnoo2w5rutoiTzPp39GAUtFlmVl568od"

# Configure your database
config :for_your_health, ForYourHealth.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "for_your_health_dev",
  pool_size: 20
