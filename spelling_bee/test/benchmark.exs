Benchee.run(
  %{
    "lib/spelling_bee.ex" => fn -> SpellingBee.solve(4, "a", "ehlpuv") end
  }
)
