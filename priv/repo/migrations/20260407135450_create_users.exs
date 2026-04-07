defmodule Testapp.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :password, :string
      add :roles, {:array, :string}, default: ["user"]

      timestamps()
    end

    create unique_index(:users, [:email])
  end
end
