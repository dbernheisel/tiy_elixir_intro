defmodule TodoCore.Todo do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  schema "todos" do
    field :name, :string
    field :completed, :boolean, default: false

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :completed])
    |> validate_required([:name, :completed])
  end
end
