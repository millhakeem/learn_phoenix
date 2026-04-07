defmodule TestappWeb.UserController do
  use TestappWeb, :controller

  alias Testapp.Accounts

  def new(conn, _params) do
    render(conn, :new)
  end

  def create(conn, params) do
    case Accounts.create_user(params) do
      {:ok, user} ->
        conn
        |> put_session(:user_id, user.id)
        |> redirect(to: "/products")

      {:error, changeset} ->
        text(conn, "Error creating user")
    end
  end
end
