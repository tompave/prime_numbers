module PrimeNumbers
  class Column
    attr_reader :header, :products, :size

    alias_method :row_values, :products


    def initialize(header, products)
      @header   = header
      @products = products.sort
      @size     = products.length
    end


    def [](index)
      products[index]
    end


    def width
      products.last.width
    end
  end
end
