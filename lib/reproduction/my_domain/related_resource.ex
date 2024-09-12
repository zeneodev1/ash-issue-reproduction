defmodule Reproduction.MyDomain.RelatedResource do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer,
    domain: Reproduction.MyDomain

  postgres do
    table "related_resource"
    repo Reproduction.Repo
  end

  actions do
    defaults [:read, :destroy, create: :*, update: :*]
  end

  attributes do
    uuid_primary_key :id

    attribute :name, :string, allow_nil?: false
  end

  relationships do
    has_one :my_resource, Reproduction.MyDomain.MyResource
  end
end
