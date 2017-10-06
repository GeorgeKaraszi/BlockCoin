defmodule Blocky.Application do
  @moduledoc """
  The Blocky Application Service.

  The blocky system business domain lives in this application.

  Exposes API to clients such as the `BlockyWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Blocky.Repo, []),
    ], strategy: :one_for_one, name: Blocky.Supervisor)
  end
end
