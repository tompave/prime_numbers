module PrimeNumbers
  class Table
    attr_reader :primes, :size, :columns

    def initialize(array)
      @primes = array
      @size = primes.length
      populate!
    end


    def [](index)
      @columns[index]
    end


    private


    def populate!
      @columns = primes.map do |x|
        products = primes.map do |y|
          Product.new(x, y)
        end

        Column.new(x, products)
      end
    end

  end
end
