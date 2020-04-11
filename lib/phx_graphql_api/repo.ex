defmodule PhxGraphqlApi.Repo do
  use Ecto.Repo,
    otp_app: :phx_graphql_api,
    adapter: Ecto.Adapters.Postgres
end
