defmodule FizzbuzzWeb.Other do
  use FizzbuzzWeb, :controller

  def index(conn, _) do
    calculator = for x <- 1..100, rem(x, 3) != 0 and rem(x, 5) != 0, do: x
    conn
    |> json(%{calculator: calculator})
  end
end
