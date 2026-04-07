defmodule TestappWeb.Plugs.RequireAdmin do
  @moduledoc """
  This plug checks if the current user is an admin. If not, it redirects to the home page with an error message.
  """
  import Plug.Conn
  import Phoenix.Controller

  def init(opts), do: opts

  def call(conn, _opts) do
    user = conn.assigns.current_user

    if user && "admin" in user.roles do
      conn
    else
      conn
      |> put_flash(:error, "Access denied")
      |> redirect(to: "/")
      |> halt()
    end
  end
end
