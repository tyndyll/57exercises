# Need to create something that can inject the value from STDIN, and use 
# delegate to pass the actual output to STDOUT, which will be caught by
# capture_io
#
# defdelegate - https://hexdocs.pm/elixir/Kernel.html#defdelegate/2
# capture_io - https://hexdocs.pm/ex_unit/ExUnit.CaptureIO.html

defmodule HelloWorldV2Test do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest HelloWorldV2

  test "takes a name and says hello" do
    assert capture_io(fn ->
      HelloWorldV2.say_hello(FakeIO)
    end) == "Hello Elixir, nice to meet you!\n"
  end

  test "is given a name and says hello, using the passed in IO" do
    assert capture_io(fn ->
      HelloWorldV2.say_hello("TestUser ", FakeIO)
    end) == "Hello TestUser, nice to meet you!\n"
  end

  test "returns trimmed input" do
    assert HelloWorldV2.input("What is your name? ", FakeIO) == "Elixir"
  end

  test "concatenates string" do
    assert HelloWorldV2.reply("Elixir") == "Hello Elixir, nice to meet you!"
  end

  test "output is passed to STDOUT" do
    assert capture_io(fn -> 
      HelloWorldV2.output("Hello Elixir", FakeIO) 
    end) == "Hello Elixir\n"
  end

end
