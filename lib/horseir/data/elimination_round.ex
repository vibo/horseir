defmodule Horseir.EliminationRound do
  use Ecto.Schema

  schema "eliination_rounds" do
    field :name, :string
    has_many :matches, Horseir.Match
    timestamps()
  end
end
