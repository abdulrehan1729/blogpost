defmodule BlogPost.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field(:email, :string)
    field(:is_admin, :boolean, default: false)
    field(:password, :string, virtual: true)
    field(:name, :string)
    field(:password_hash, :string)
    has_many(:posts, BlogPost.Post)

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :name, :password_hash, :is_admin])
    |> validate_required([:email, :name, :password_hash, :is_admin])
  end
end
