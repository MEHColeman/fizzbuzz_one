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
  end
end
