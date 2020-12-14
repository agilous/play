defmodule SpellingBeeTest do
  use ExUnit.Case

  describe "prohibited_letters/2" do
    test "returns as a string the letters of the alphabet excluding the given strings of must have and other possibility letters" do
      assert SpellingBee.prohibited_letters("a", "ehlpuv") == "bcdfgijkmnoqrstwxyz"
    end
  end

  @tag :me
  describe "solve/3" do
    test "all the words in the dictionary file that match the criteria" do
      expected_result = [
        "alpha", "appal", "appall", "appeal", "apple", "eave", "hale", "hall",
        "halve", "haul", "have", "heal", "heap", "heave", "hula", "lapel",
        "lava", "leap", "leave", "luau", "pale", "pall", "papa", "papal",
        "pave", "peal", "plea", "pupa", "pupae", "pupal", "upheaval", "uvula",
        "uvulae", "vale", "value", "valve", "veal", "vulva", "vulvae"
      ]
      assert SpellingBee.solve(4, "a", "ehlpuv") == expected_result
    end
  end
end
