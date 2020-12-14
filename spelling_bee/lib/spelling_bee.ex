defmodule SpellingBee do
  def prohibited_letters(must_have, other_possibles) do
    ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    |> Enum.reject(fn(x) -> Regex.match?(~r/#{x}/, "#{must_have}#{other_possibles}") end)
    |> Enum.join()
  end

  def solve(min_chars, must_have, other_possibles) do
    {:ok, words} = File.read("words")
    prohibited_letters = prohibited_letters(must_have, other_possibles)

    words
    |> String.split("\n", trim: true)
    |> Enum.filter(fn(word) -> String.length(word) >= min_chars end)
    |> Enum.reject(fn(word) -> Regex.match?(~r/[A-Z]/, word) end)
    |> Enum.filter(fn(word) -> Regex.match?(~r/#{must_have}/, word) end)
    |> Enum.filter(fn(word) -> Regex.match?(~r/^[^#{prohibited_letters}]+$/, word) end)
  end
end
