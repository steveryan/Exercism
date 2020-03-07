defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    clean_sentence = String.split(sentence, ["_",",","!","&","@","$","%","^","&",":", " "], trim: true)
    Enum.frequencies_by(clean_sentence, &String.downcase/1)
  end
end
