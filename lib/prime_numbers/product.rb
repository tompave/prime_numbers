module PrimeNumbers
  class Product
    include Comparable


    def initialize(x, y)
      @x, @y = x.to_i, y.to_i
    end


    def value
      @value ||= @x * @y
    end


    def to_s
      value.to_s
    end


    def width
      to_s.length
    end


    def <=>(other)
      raise TypeError unless other.is_a?(Product)
      value <=> other.value
    end

  end
end
