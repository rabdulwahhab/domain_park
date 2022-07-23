defmodule DomainParkWeb.PageController do
  use DomainParkWeb, :controller
  require Logger

  def index(conn, _params) do
    Logger.debug(conn.host)
    render(conn, "index.html")
  end
end
