defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  
  def translate(letter) do
    case letter do
      67 -> List.first('G')
      71 -> List.first('C')
      84 -> List.first('A')
      65 -> List.first('U')
    end
  end
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    Enum.map(dna, fn x -> translate(x) end)
  end

end
