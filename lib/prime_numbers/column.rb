module PrimeNumbers
  class Column
    attr_reader :header, :products

    def initialize(header, products)
      @header   = header
      @products = products
    end


    def [](index)
      products[index]
    end


    def width
      @width ||= products.sort.last.width
    end
  end
end
