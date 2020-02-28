defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """

  def translate(letter) do
    char = [letter]

    case char do
      'C' -> List.first('G')
      'G' -> List.first('C')
      'T' -> List.first('A')
      'A' -> List.first('U')
    end
  end

  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    Enum.map(dna, fn x -> translate(x) end)
  end
end
