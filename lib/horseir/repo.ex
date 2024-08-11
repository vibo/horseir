defmodule Horseir.Repo do
  use Ecto.Repo,
    otp_app: :horseir,
    adapter: Ecto.Adapters.SQLite3
end
