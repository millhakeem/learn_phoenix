defmodule TestappWeb.PageController do
  use TestappWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def hello(conn, _params) do
    text(conn, "Hello world")
  end
end
