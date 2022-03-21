defmodule MerkleTree do
  @moduledoc """
  A hash tree or Merkle tree is a tree
  in which every non-leaf node is labelled with the hash of the labels or values (in case of leaves) of its child nodes.
  Hash trees are useful because they allow efficient and secure verification of the contents of large data structures.
  Hash trees are a generalization of hash lists and hash chains.
  """

  @doc """
  It returns with the correct root hash.

  ## Examples

      iex> MerkleTree.root("test/fixtures/good_transactions.txt")
      "4a9e8f146d0283c7c3f442d056fe6c8e483b321cd68158bdf00861f7de5260ae"

      iex> MerkleTree.root("test/fixtures/bad_transactions.txt")
      "133ea61e7eac37082c0dbceea55dc088ba06a1e9b5764ce9f39fcfa7ae001c19"
  """
  @spec root(String.t) :: String.t
  def root(filepath) do
    File.stream!(filepath)
    |> Stream.map(&String.trim_trailing/1)
    |> Enum.to_list
    |> encode
  end

  # PRIVATE METHODS

  @spec encode(List.t, Integer.t) :: String.t
  defp encode(_transactions, _number \\ 2)
  defp encode([root_sha], _number), do: root_sha
  defp encode(transactions, number) do
    transactions
    |> Enum.chunk_every(number)
    |> Enum.map(
         fn [tr1, tr2] ->
           :crypto.hash(:sha256, tr1 <> tr2)
           |> Base.encode16(case: :lower)
         end
       )
    |> encode(number)
  end

end
