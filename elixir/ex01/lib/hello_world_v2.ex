defmodule HelloWorldV2 do
  @moduledoc """
  Documentation for HelloWorldV2
  """

  @question "What is your name? "

def say_hello(io) when is_atom(io) do
  say_hello(nil, io)
  end

  def say_hello(name \\ nil, io \\ IO) do
    name = name || @question |> input(io)
    name
    |> String.trim
    |> reply
    |> output(io)
  end

  def input(question, io) do
    io.gets(question)
  end

  def output(text, io) do
    io.puts(text)
  end

  def reply(name), do: "Hello #{name}, nice to meet you!"
end
