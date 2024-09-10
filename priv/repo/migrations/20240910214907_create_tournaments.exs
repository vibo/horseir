defmodule Horseir.Repo.Migrations.CreateTournaments do
  use Ecto.Migration

  def change do
    create table(:tournaments) do
      add :name, :string
      timestamps()
    end
  end
end
