defmodule Rumbl.Multimedia.Permalink do
  @behaviour Ecto.Type

  # changing behaviour of default id type
  # as for video unique identifier is string based on id and slug field.
  # we want to etract id when querying

  # type - Returns the underlying Ecto type. In this case, we’re building on top
  # of :id .
  # cast - Called when external data is passed into Ecto. It’s invoked when values
  # in queries are interpolated or also by the cast function in changesets.
  # dump - Invoked when data is sent to the database.
  # load - Invoked when data is loaded from the database.
  def type, do: :id

  def cast(binary) when is_binary(binary) do
    case Integer.parse(binary) do
      {int, _} when int > 0 -> {:ok, int}
      _ -> :error
    end
  end

  def cast(integer) when is_integer(integer) do
    {:ok, integer}
  end

  def cast(_) do
    :error
  end

  def dump(integer) when is_integer(integer) do
    {:ok, integer}
  end

  def load(integer) when is_integer(integer) do
    {:ok, integer}
  end
end
