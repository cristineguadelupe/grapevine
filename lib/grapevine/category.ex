defmodule Grapevine.Category do
  use Ecto.Schema
  import Ecto.Changeset

  alias Grapevine.Post

  schema "categories" do
    field :name, :string

    has_many :posts, Post

    timestamps()
  end

  @doc false
  def changeset(struct, attrs) do
    struct
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
