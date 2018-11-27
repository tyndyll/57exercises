defmodule HelloWorld do
  @moduledoc """
  Documentation for HelloWorld
  """

  @question "What is your name? "

  def say_hello do
    @question
    |> input(IO)
    |> say_hello(IO)
  end

  def say_hello(io) when is_atom(io) do
    @question
    |> input(io)
    |> say_hello(io)
  end

  def say_hello(name) when is_binary(name) do
    name
    |> say_hello(IO)
  end

  def say_hello(name, io) when is_binary(name) and is_atom(io) do
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
