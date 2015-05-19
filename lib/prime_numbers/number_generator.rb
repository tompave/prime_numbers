require 'prime'

module PrimeNumbers
  module NumberGenerator
    class << self
      def get(count)
        Prime.first count
      end
    end
  end
end
