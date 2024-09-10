defmodule HorseirWeb.TournamentLive do
  use HorseirWeb, :live_view
  alias Horseir.Repo
  alias Horseir.Tournament

  def mount(_params, _sessions, socket) do
    tournaments = Repo.all(Tournament)

    {:ok, assign(socket, tournaments: tournaments)}
  end

  def render(assigns) do
    ~H"""
    <div class="margin-x-auto bg-gray-300 max-w-[564px]">
      <div class="bg-green-800 text-white h-16 px-6">test</div>


      <%!-- <%= for tournament <- @tournaments do %>
        <div>
          <%= tournament.name %>
        </div>
      <% end %> --%>
    </div>
    """
  end
end
