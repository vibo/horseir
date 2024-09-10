defmodule Horseir.Match do
  use Ecto.Schema

  schema "matches" do
    field :home_team_score, :integer
    field :away_team_score, :integer
    field :date, :utc_datetime
    field :outcome, :string
    field :status, :string
    belongs_to :away_team, Horseir.Team
    belongs_to :home_team, Horseir.Team
    timestamps()
  end
end
