# Fizzbuzz

~~~
> ruby fizzbuzz.rb 17
1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizzbuzz, 16, 17
~~~


Welcome. Fizzbuzz generates a comma separated list of integers or strings,
conforming to the rules of the Fizz buzz game. Integers divisible by 3 are
replaced by _Fizz_, integers divisible by 5 are replaced with _Buzz_. In this
version of the rules, integers divisible by both 3 and 5 are replaced with
_Fizzbuzz_ (not FizzBuzz)

This is a trivial programming task that can be done in a thousand different
ways. Here is the gist of it, expressed in one line.[^1]

[^1:] Yeah, OK. A lot of things can be expressed on one line if you don't
respect the 80 character limit. Also, this version doesn't quite meet the spec
- note the capitalisation.

~~~
1.upto(lim) { |n| puts "#{'Fizz' if n % 3 == 0}#{'Buzz' if n % 5 == 0}#{n if n % 3 != 0 && n % 5 != 0}" }
~~~

However, the goal of this code is not to write the most concise version

This version should show a reasonable development approach. The code should
be easy to understand, and self-documented. The development should reflect
a test-driven philosophy, and there should be a coherent git history that
documents each step in the development process.

It may seem over-engineered for a simple example, but the file structure, the
design and the development techniques reflect those best suited to a large,
long-lived project with a complicated system, worked on by many developers.

## Usage

~~~
ruby fizzbuzz.rb <limit>
~~~

## Development
~~~
bundle install
bundle exec rspec
~~~

## License

(c) Mark Coleman 2020.
All rights reserved. You can't copy this to cheat on an interview question!
