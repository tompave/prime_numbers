require 'minitest_helper'

class PrimeNumbersTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::PrimeNumbers::VERSION
  end

end
