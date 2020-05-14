# frozen_string_literal: true

module FizzBuzz
  RSpec.describe 'command line invocation' do
    it 'outputs a fizz buzz string, given an integer argument' do
      expected_output = "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, "\
        "11, Fizz, 13, 14, Fizzbuzz, 16, 17\n"

      expect { system 'ruby fizzbuzz.rb 17' }
        .to output(expected_output)
        .to_stdout_from_any_process
    end
  end
end
