defmodule Horseir.Repo.Migrations.CreateEliminationRounds do
  use Ecto.Migration

  def change do
    create table(:elimination_rounds) do
      add :name, :string
      add :tournament_id, references(:tournaments, on_delete: :delete_all)
      timestamps()
    end
  end
end
