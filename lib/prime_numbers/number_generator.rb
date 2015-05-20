require 'prime'

module PrimeNumbers
  module NumberGenerator
    class << self

      def get(count)
        if count > 1
          generate(count)
        elsif count == 1
          [2]
        else
          []
        end
      end


      private


      def generate(count)
        primes = [2, 3]
        last = 3

        until primes.length == count
          last += 2
          tests = 2..Math.sqrt(last).ceil
          primes << last unless tests.any? { |test| last % test == 0 }
        end
        primes
      end

    end
  end
end
