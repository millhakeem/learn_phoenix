defmodule TestappWeb.Admin.ProductController do
  use TestappWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end
end
