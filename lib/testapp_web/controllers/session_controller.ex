defmodule TestappWeb.SessionController do
  use TestappWeb, :controller

  alias Testapp.Accounts

  def new(conn, _params) do
    render(conn, :new)
  end

  def create(conn, params) do
    email = params["email"]
    password = params["password"]

    case Accounts.authenticate_user(email, password) do
      {:ok, user} ->
        conn
        |> put_session(:user_id, user.id)
        |> redirect(to: "/products")

      {:error, _} ->
        text(conn, "Invalid email or password")
    end
  end

  def delete(conn, _params) do
    conn
    |> configure_session(drop: true)
    |> redirect(to: "/")
  end
end
