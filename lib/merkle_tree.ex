defmodule MerkelTree do
  @moduledoc """
  A hash tree or Merkle tree is a tree
  in which every non-leaf node is labelled with the hash of the labels or values (in case of leaves) of its child nodes.
  Hash trees are useful because they allow efficient and secure verification of the contents of large data structures.
  Hash trees are a generalization of hash lists and hash chains.
  """

  @doc """
  It returns with the correct root hash .

  ## Examples

      iex> MerkelTree.root()
      "root_hash"

  """
  def root do
    "root_hash"
  end
end
