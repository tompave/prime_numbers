module PrimeNumbers
  class Column
    attr_reader :header, :products

    alias_method :row_values, :products


    def initialize(header, products)
      @header = header
      @products = products.sort
    end


    def [](index)
      products[index]
    end


    def width
      products.last.width
    end
  end
end
