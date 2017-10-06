use Mix.Config

# Configure your database
config :blocky, Blocky.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "blocky_dev",
  hostname: "localhost",
  pool_size: 10
