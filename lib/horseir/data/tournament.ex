defmodule Horseir.Tournament do
  use Ecto.Schema

  schema "tournaments" do
    field :name, :string
    has_many :groups, Horseir.Group
    has_many :elimnination_rounds, Horseir.EliminationRound
    has_many :teams, Horseir.Team
    timestamps()
  end
end
