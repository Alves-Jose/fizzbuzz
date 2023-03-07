defmodule FizzbuzzWeb.Buzz do
  use FizzbuzzWeb, :controller

  def index(conn, _) do
   Enum.sort([buzz = Enum.filter(1..100, fn x -> rem(x, 5) == 0 end)])

    conn
    |> json(%{buzz: buzz})
  end
end
