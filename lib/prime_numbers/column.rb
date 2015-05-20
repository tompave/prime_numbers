module PrimeNumbers
  class Column
    attr_reader :header, :products

    def initialize(header, products)
      @header   = header
      @products = products.sort
    end


    def [](index)
      products[index]
    end


    def width
      @width ||= products.last.width
    end
  end
end
