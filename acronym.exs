defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """

  @regex_capitalize ~r/\s[a-z]+/
  @regex_get_upcase ~r/[a-z ,-]+/

  @spec abbreviate(string) :: String.t()
  def abbreviate(string) do
    string = capitalize(string)
    String.replace(string, @regex_get_upcase, "") |> String.strip
  end

  defp capitalize(string) do
    Regex.replace(@regex_capitalize, string, &(String.strip(&1) |> String.capitalize ))
  end

end
