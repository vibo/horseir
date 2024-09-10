defmodule Horseir.Repo.Migrations.CreateGroups do
  use Ecto.Migration

  def change do
    create table(:groups) do
      add :name, :string
      add :tournament_id, references(:tournaments, on_delete: :delete_all)
      timestamps()
    end
  end
end
