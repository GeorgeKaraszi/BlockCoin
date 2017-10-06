use Mix.Config

config :blocky, ecto_repos: [Blocky.Repo]

import_config "#{Mix.env}.exs"
