defmodule MerkleTreeTest do
  use ExUnit.Case
  doctest MerkleTree

  @good_filepath "test/fixtures/good_transactions.txt"
  @bad_filepath  "test/fixtures/bad_transactions.txt"
  @root_sha      "4a9e8f146d0283c7c3f442d056fe6c8e483b321cd68158bdf00861f7de5260ae"

  test "It returns with the correct root hash" do
    assert MerkleTree.root(@good_filepath) == @root_sha
  end

  test "It shouldn't match with the correct root hash" do
    refute MerkleTree.root(@bad_filepath) == @root_sha
  end
end
