defmodule RnaTranscription do
  def translate(char) do
    case char do
      ?C -> ?G
      ?G -> ?C
      ?T -> ?A
      ?A -> ?U
    end
  end

  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """

  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    Enum.map(dna, &translate/1)
  end
end
