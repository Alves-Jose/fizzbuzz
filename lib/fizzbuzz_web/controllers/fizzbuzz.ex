defmodule FizzbuzzWeb.FizzBuzz do
  use FizzbuzzWeb, :controller

  def index(conn, _) do

    fizzbuzz = for x <- 1..100, rem(x, 3) == 0 and rem(x, 5) == 0, do: x

    conn
    |> json(%{fizzbuzz: fizzbuzz})
  end
end
