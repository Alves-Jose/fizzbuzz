defmodule FizzbuzzWeb.FizzBuzz do
  use FizzbuzzWeb, :controller

  def index(conn, _) do

    fizzbuzz = for n <- 1..100, rem(n, 3) == 0 and rem(n, 5) == 0, do: n

    conn
    |> json(%{fizzbuzz: fizzbuzz})
  end
end
