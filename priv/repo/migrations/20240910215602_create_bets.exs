defmodule Horseir.Repo.Migrations.CreateBets do
  use Ecto.Migration

  def change do
    create table(:bets) do
      add :bet, :string
      add :user_id, references(:users, on_delete: :delete_all)
      add :match_id, references(:matches, on_delete: :delete_all)
      timestamps()
    end
  end
end
