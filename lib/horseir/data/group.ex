defmodule Horseir.Group do
  use Ecto.Schema

  schema "groups" do
    field :name, :string
    has_many :matches, Horseir.Match
    timestamps()
  end
end
