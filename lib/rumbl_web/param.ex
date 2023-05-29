# instead of extracting id from video struct it will string of id and slug field.
defimpl Phoenix.Param, for: Rumbl.Multimedia.Video do
  def to_param(%{slug: slug, id: id}) do
    "#{id}-#{slug}"
  end
end
