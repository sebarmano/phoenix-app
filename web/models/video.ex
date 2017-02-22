defmodule Rumbl.Video do
  use Rumbl.Web, :model

  schema "videos" do
    field :url, :string
    field :title, :string
    field :description, :string
    belongs_to :user, Rumbl.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  # Old version generated
  # def changeset(struct, params \\ %{}) do
  #   struct
  #   |> cast(params, [:url, :title, :description])
  #   |> validate_required([:url, :title, :description])
  # end

  # New version copied from the book
  @required_fields ~w(url title description)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
