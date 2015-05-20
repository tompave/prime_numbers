require 'prime_numbers/version'
require 'prime_numbers/number_generator'
require 'prime_numbers/product'
require 'prime_numbers/column'
require 'prime_numbers/table'
require 'prime_numbers/renderer'

module PrimeNumbers
  class << self

    def run(count)
      print_header

      primes = NumberGenerator.get(count)
      table  = Table.new(primes)
      output = Renderer.new(table).render

      puts output
      puts " "
    end


    private


    def print_header
      puts "\nPrimeNumbers #{PrimeNumbers::VERSION}\n "
    end
  end
end
