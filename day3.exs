defmodule AdventofCode.Day3 do

  def deliver(instructions) do
    processs_list(to_charlist(instructions), 0)
  end

  defp processs_list([], n) do
    IO.puts n
    n
  end

  defp processs_list([_h|t], n) do
    processs_list(t, n + 1)
  end

end

alias AdventofCode.Day3
import ExUnit.Assertions

assert 2 == Day3.deliver(">")
assert 4 == Day3.deliver("^>v<")
assert 2 == Day3.deliver("^v^v^v^v^v")
