defmodule Reproduction do
  @moduledoc """
  Documentation for `Reproduction`.
  """

  def reproduce do
    Reproduction.MyDomain.create_my_resource(%{name: "something", related_resource: %{name: nil}})
  end
end
