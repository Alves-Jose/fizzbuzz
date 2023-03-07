defmodule FizzbuzzWeb.Fizz do
  use FizzbuzzWeb, :controller

  def index(conn, _) do
    fizz = Enum.filter(1..100, fn x -> rem(x, 3) == 0 end)

    conn
    |> json(%{fizz: fizz})
  end
end
