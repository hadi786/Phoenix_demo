use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :phoenix_demo, PhoenixDemoWeb.Endpoint,
  secret_key_base: "apr7nzBxPzV5gSS3jvbhsgluGBC04229/em81vgNoQLjToRP90KuWro1BWDqF6LF"

# Configure your database
config :phoenix_demo, PhoenixDemo.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true

