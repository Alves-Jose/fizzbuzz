defmodule FizzbuzzWeb.Router do
  use FizzbuzzWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", FizzbuzzWeb do
    pipe_through :api

    post "/other", Other, :index
    post "/fizz", Fizz, :index
    post "/buzz", Buzz, :index
    post "/fizzbuzz", FizzBuzz, :index
  end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:fizzbuzz, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through [:fetch_session, :protect_from_forgery]

      live_dashboard "/dashboard", metrics: FizzbuzzWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
