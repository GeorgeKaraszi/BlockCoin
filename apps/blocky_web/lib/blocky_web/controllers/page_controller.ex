defmodule BlockyWeb.PageController do
  use BlockyWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
