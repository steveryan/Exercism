defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    clean_sentence =
      String.replace(sentence, "_", " ")
      |> String.replace(",", " ")
      |> String.replace("!", " ")
      |> String.replace("&", " ")
      |> String.replace("@", " ")
      |> String.replace("$", " ")
      |> String.replace("%", " ")
      |> String.replace("^", " ")
      |> String.replace("&", " ")
      |> String.replace(":", " ")

    word_list = ~w(#{clean_sentence})
    Enum.frequencies_by(word_list, &String.downcase/1)
  end
end
