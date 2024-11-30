defmodule AdventOfCode.Day0123Test do
  use ExUnit.Case

  import AdventOfCode.Day0123

  test "part1" do
    input = "../data/2023/012023.txt"
    result = part1(input)

    assert result
  end

  @tag :skip
  test "part2" do
    input = nil
    result = part2(input)

    assert result
  end
end