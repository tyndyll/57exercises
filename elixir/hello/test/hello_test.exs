defmodule HelloTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "greets the user by name" do
    output =
      capture_io([input: "Brian\n"], fn ->
        Hello.hello()
      end)

    assert output =~ "Hello, Brian, nice to meet you!"
  end

  test "greet/1 outputs the correct message directly" do
    output =
      capture_io(fn ->
        Hello.greet("Brian")
      end)

    assert output == "Hello, Brian, nice to meet you!\n"
  end
end
