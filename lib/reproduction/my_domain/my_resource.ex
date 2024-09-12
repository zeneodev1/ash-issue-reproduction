defmodule Reproduction.MyDomain.MyResource do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer,
    domain: Reproduction.MyDomain

  postgres do
    table "my_resource"
    repo Reproduction.Repo
  end

  actions do
    defaults [:read, :destroy, update: :*]

    create :create do
      argument :related_resource, :map, allow_nil?: false
      accept [:name]
      change manage_relationship(:related_resource, :related_resource, type: :create)
    end
  end

  attributes do
    uuid_primary_key :id

    attribute :name, :string, allow_nil?: false
  end

  relationships do
    belongs_to :related_resource, Reproduction.MyDomain.RelatedResource
  end
end
