defmodule MerkelTreeTest do
  use ExUnit.Case
  doctest MerkelTree

  test "It returns with the correct root hash" do
    assert MerkelTree.root() == "root_hash"
  end
end
