# frozen_string_literal: true

require 'fizzbuzz'

module FizzBuzz
  RSpec.describe Fizzbuzz, '.output' do
    it 'outputs integers when not divisible by 3 or 5' do
      expect { Fizzbuzz.output(2) }
        .to output("1, 2\n")
        .to_stdout_from_any_process
    end
    it 'outputs Fizz when divisible by 3' do
      expect { Fizzbuzz.output(3) }
        .to output("1, 2, Fizz\n")
        .to_stdout_from_any_process
    end
    it 'outputs Buzz when divisible by 5' do
      expect { Fizzbuzz.output(5) }
        .to output("1, 2, Fizz, 4, Buzz\n")
        .to_stdout_from_any_process
    end
  end

  RSpec.describe Fizzbuzz, '.fizzy?' do
    it 'returns false if the integer is not divisible by 3' do
      expect(Fizzbuzz.fizzy?(2)).to be_falsey
    end
    it 'returns true if the integer is divisible by 3' do
      expect(Fizzbuzz.fizzy?(3)).to be_truthy
    end
  end

  RSpec.describe Fizzbuzz, '.buzzy?' do
    it 'returns false if the integer is not divisible by 3' do
      expect(Fizzbuzz.buzzy?(3)).to be_falsey
    end
    it 'returns true if the integer is divisible by 3' do
      expect(Fizzbuzz.buzzy?(5)).to be_truthy
    end
  end

  RSpec.describe Fizzbuzz, '.fizzbuzzy?' do
    it 'returns false if the integer is not divisible by both 3 and 5' do
      expect(Fizzbuzz.fizzbuzzy?(3)).to be_falsey
      expect(Fizzbuzz.fizzbuzzy?(5)).to be_falsey
      expect(Fizzbuzz.fizzbuzzy?(7)).to be_falsey
    end
    it 'returns true if the integer is divisible by both 3 and 5' do
      expect(Fizzbuzz.fizzbuzzy?(15)).to be_truthy
    end
  end

  RSpec.describe Fizzbuzz, '.to_output' do
    it 'returns the integer if it is not fizzy or buzzy' do
      expect(Fizzbuzz.to_output(2)).to eq 2
    end
    it 'returns the integer if it is not fizzy or buzzy' do
      expect(Fizzbuzz.to_output(3)).to eq 'Fizz'
    end
    it 'returns the integer if it is not fizzy or buzzy' do
      expect(Fizzbuzz.to_output(5)).to eq 'Buzz'
    end
    it 'returns the integer if it is not fizzy or buzzy' do
      expect(Fizzbuzz.to_output(15)).to eq 'Fizzbuzz'
    end
  end
end
