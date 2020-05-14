# frozen_string_literal: true

require 'fizzbuzz'

module FizzBuzz
  RSpec.describe Fizzbuzz, '.output' do
    it 'outputs integers when not divisible by 3 or 5' do
      expect { Fizzbuzz.output(2) }
        .to output("1, 2\n")
        .to_stdout_from_any_process
    end
  end
end
