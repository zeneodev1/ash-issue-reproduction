import Config

config :reproduction, Reproduction.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "reproduction_dev",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
