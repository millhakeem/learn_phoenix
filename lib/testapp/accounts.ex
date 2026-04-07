defmodule Testapp.Accounts do
  @moduledoc """
  The Accounts context.
  """
  alias Testapp.Repo
  alias Testapp.Accounts.User

  def create_user(attrs) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def get_user!(id), do: Repo.get!(User, id)

  def get_user_by_email(email), do: Repo.get_by(User, email: email)

  def authenticate_user(email, password) do
    get_user_by_email(email)
    |> check_password(password)
  end

  defp check_password(nil, _password), do: {:error, :invalid_credentials}
  defp check_password(%{password: password} = user, password), do: {:ok, user}
  defp check_password(_user, _password), do: {:error, :invalid_credentials}
end
