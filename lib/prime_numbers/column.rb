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
      @width ||= products.sort do |a, b|
        if a.is_a?(Product)
          a <=> b
        else
          a.to_s <=> b.to_s
        end
      end.last.width
    end
  end
end
