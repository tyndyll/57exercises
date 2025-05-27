defmodule Hello do
  @moduledoc """
  A program that prompts for your name and prints a greeting using your name.
  """

  @doc """

  ## Examples

      iex> Hello.hello()
      :world

  """
  def hello do
    IO.gets("What is your name? ")
    |> String.trim()
    |> greet
  end

  def greet(user) do
    IO.puts("Hello, #{user}, nice to meet you!")
  end
end
