defmodule Horseir.Repo.Migrations.CreateMatches do
  use Ecto.Migration

  def change do
    create table(:matches) do
      add :home_team_score, :integer
      add :away_team_score, :integer
      add :date, :utc_datetime
      add :outcome, :string
      add :status, :string
      add :home_team_id, references(:teams, on_delete: :delete_all)
      add :away_team_id, references(:teams, on_delete: :delete_all)
      add :group_id, references(:groups, on_delete: :delete_all), null: true
      add :elimination_round_id, references(:elimination_rounds, on_delete: :delete_all), null: true
      timestamps()
    end
  end
end
