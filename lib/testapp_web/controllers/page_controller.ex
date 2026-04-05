defmodule TestappWeb.PageController do
  use TestappWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
