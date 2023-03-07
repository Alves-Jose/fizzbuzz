# Fizzbuzz

Case: Subir um aplicação em Phoenix Framework com as seguintes rotas:

Criar uma rota FizzBuzz que retorna os números divisíveis por 3 e 5 numa lista de 1 a 100

Criar uma rota Fizz que retorna os números divisíveis por 3 numa lista de 1 a 100

Criar uma rota Buzz que retorna os números divisíveis por 5 numa lista de 1 a 100

Criar uma rota Other que retorna os números não é divisível nem por 3 nem por 5, apenas é n numa lista de 1 a 100

-------------------------------------------

Iniciei o desenvolvimento do programa com function "Case", porém não chegou ao resultado esperado. Após isso, a minha segunda tentativa foi usando a function "Cond", não cheguei ao resultado esperado, pois o programa estava retornando os números não divísiveis com "Not"

Pensei em remover o "Not" retornado com alguma function dentro da biblioteca do Enum e acabei encontrando a solução utilizando a function "Filter" para a rota "Other" e "FizzBuzz" utilizei a comprehension "For" depois de entrar no Elixir School e ver alguns exemplos.

-------------------------------------------

A rota POST > http://localhost:4000/api/fizz retorna os números divisíveis por 3 em uma lista de 1 a 100 números.
A rota POST > http://localhost:4000/api/buzz retorna os números divisíveis por 5 numa lista de 1 a 100 números.
A rota POST > http://localhost:4000/api/other retorna os números que não são divisíveis nem por 3 e nem por 5, apenas é um n em uma lista de 1 a 100 números.
A rota POST > http://localhost:4000/api/fizzbuzz retorna os números divisíveis por 3 e 5 numa lista de 1 a 100 números.



To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
