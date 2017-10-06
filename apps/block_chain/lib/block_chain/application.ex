defmodule BlockChain.Application do
    @moduledoc """
    The BlockChain Application Service.

    The block chain system business domain lives in this application.

    Exposes API to clients such as the `BlockyWeb` application
    for use in channels, controllers, and elsewhere.
    """
    use Application

    def start(_type, _args) do
      import Supervisor.Spec, warn: false

      Supervisor.start_link([], strategy: :one_for_one, name: BlockChain.Supervisor)
    end
  end
