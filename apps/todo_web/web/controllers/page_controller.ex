defmodule TodoWeb.PageController do
  use TodoWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
