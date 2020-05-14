module FizzBuzz
  class Fizzbuzz
    def self.output(limit)
      1.upto(limit) do |n|
        print n
        seperator =
          n == limit ? "\n" : ', '
        print seperator
      end
    end

    def self.fizzy?(candidate)
      (candidate % 3).zero?
    end

    def self.buzzy?(candidate)
      (candidate % 5).zero?
    end

    def self.fizzbuzzy?(candidate)
      fizzy?(candidate) && buzzy?(candidate)
    end

    def self.to_output(numeric_value)
      return 'Fizzbuzz' if fizzbuzzy?(numeric_value)
      return 'Fizz' if fizzy?(numeric_value)
      return 'Buzz' if buzzy?(numeric_value)

      numeric_value
    end
  end
end
