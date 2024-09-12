defmodule Reproduction.MyDomain do
  use Ash.Domain

  resources do
    resource Reproduction.MyDomain.MyResource do
      define :create_my_resource, action: :create
    end

    resource Reproduction.MyDomain.RelatedResource
  end
end
