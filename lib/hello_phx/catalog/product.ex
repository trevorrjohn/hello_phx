alias HelloPhx.Catalog.Category

defmodule HelloPhx.Catalog.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :description, :string
    field :title, :string
    field :price, :decimal
    field :views, :integer

    many_to_many(:categories, Category, join_through: "product_categories", on_replace: :delete)

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:title, :description, :price, :views])
    |> validate_required([:title, :description, :price, :views])
    |> validate_number(:price, greater_than_or_equal_to: 0)
  end
end
