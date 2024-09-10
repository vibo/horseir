defmodule Horseir.User do
  use Ecto.Schema

  schema "users" do
    field :name, :string
    field :sub, :string
    timestamps()
  end
end
