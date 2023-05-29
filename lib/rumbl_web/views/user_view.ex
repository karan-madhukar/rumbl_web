defmodule RumblWeb.UserView do
  use RumblWeb, :view

  alias Rumbl.Account

  def first_name(%Account.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end

  def render("user.json", %{user: user}) do
    %{id: user.id, username: user.username}
  end
end
