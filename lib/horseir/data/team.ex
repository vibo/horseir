defmodule Horseir.Team do
  use Ecto.Schema

  schema "teams" do
    field :name, :string
    field :logo, :string
    timestamps()
  end
end
