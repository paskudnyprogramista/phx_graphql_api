defmodule PhxGraphqlApiWeb.Router do
  use PhxGraphqlApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhxGraphqlApiWeb do
    pipe_through :api
  end
end
