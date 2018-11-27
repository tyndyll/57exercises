# Exercise 01 - Saying Hello
Literally hello world... Takes advantage of the default arguments (\\\\) in Elixir to pass through a fake STDIN and STDOUT for the purposes of testing

## Running and Testing
Assuming that you are working from this directory

```
➜  ex01 git:(master) ✗ iex -S mix
Interactive Elixir (1.7.4) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> HelloWorld.say_hello
What is your name? Tyndyll
Hello Tyndyll, nice to meet you!
:ok
iex(2)> HelloWorld.say_hello("Boris")
Hello Boris, nice to meet you!
:ok
iex(3)> HelloWorld.say_hello("Boris", IO)
Hello Boris, nice to meet you!
:ok
iex(4)> HelloWorld.say_hello(IO)
What is your name? Tyndyll
Hello Tyndyll, nice to meet you!
:ok
iex(5)> HelloWorldV2.say_hello
What is your name? Tyndyll
Hello Tyndyll, nice to meet you!
:ok
iex(6)> HelloWorldV2.say_hello("Boris")
Hello Boris, nice to meet you!
:ok
iex(7)> HelloWorldV2.say_hello("Boris", IO)
Hello Boris, nice to meet you!
:ok
iex(8)> HelloWorldV2.say_hello(IO)
What is your name? Tyndyll
Hello Tyndyll, nice to meet you!
:ok

➜  ex01 git:(master) ✗ mix test
..........

Finished in 0.1 seconds
10 tests, 0 failures

Randomized with seed 182584
```
