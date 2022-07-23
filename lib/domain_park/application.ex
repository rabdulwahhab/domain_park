defmodule DomainPark.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      # DomainParkWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: DomainPark.PubSub},
      # Start the Endpoint (http/https)
      DomainParkWeb.Endpoint
      # Start a worker by calling: DomainPark.Worker.start_link(arg)
      # {DomainPark.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DomainPark.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DomainParkWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
