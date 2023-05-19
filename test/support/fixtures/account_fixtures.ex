defmodule Rumbl.AccountFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Rumbl.Account` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "some name",
        username: "some username"
      })
      |> Rumbl.Account.create_user()

    user
  end
end
