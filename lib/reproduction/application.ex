defmodule Reproduction.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [Reproduction.Repo]

    opts = [strategy: :one_for_one, name: Reproduction.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
