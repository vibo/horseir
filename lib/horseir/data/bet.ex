defmodule Horseir.Bet do
  use Ecto.Schema

  schema "bets" do
    field :bet, :string
    belongs_to :user, Horseir.User
    belongs_to :match, Horseir.Match
    timestamps()
  end
end
