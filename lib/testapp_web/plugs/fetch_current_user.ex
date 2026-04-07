defmodule TestappWeb.Plugs.FetchCurrentUser do
  @moduledoc """
  This plug fetches the current user from the session and assigns it to the connection.
  """
  import Plug.Conn

  alias Testapp.Accounts

  def init(opts), do: opts

  def call(conn, _opts) do
    user_id = get_session(conn, :user_id)

    user =
      if user_id do
        Accounts.get_user!(user_id)
      else
        nil
      end

    assign(conn, :current_user, user)
  end
end
