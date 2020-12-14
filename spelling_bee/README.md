# SpellingBee
A simple puzzle solver written in Elixir that produces solutions for the New
York Times game of the same name.

## Requirements
* Elixir 1.11.1-otp-22

## Solving A Puzzle
Run `iex -S mix` then in the IEx prompt run:
```sh
iex(1)> SpellingBee.solve(4, "a", "ehlpuv") |> IO.inspect(limit: :infinity)
```

## Benchmarks
Run `mix run test/benchmark.exs`