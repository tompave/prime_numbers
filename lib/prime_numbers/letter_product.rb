module PrimeNumbers
  class LetterProduct
    def initialize(x, y)
      @x, @y = x, y
    end


    def value
      @value ||= @x + @y
    end


    def to_s
      value
    end


    def width
      to_s.length
    end
  end
end
