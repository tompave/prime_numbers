require 'minitest_helper'

class NumberGeneratorTest < Minitest::Test

  def test_exposes_the_get_singleton_method
    assert_respond_to generator, :get
  end

  def test_returns_an_array
    assert_instance_of Array, generator.get(0)
    assert_instance_of Array, generator.get(1)
    assert_instance_of Array, generator.get(10)
  end


  # Test that the results are correct.
  # Using the "Prime" module from the stdlib as reference.
  #
  def test_results
    [1, 5, 10, 20].each do |count|
      assert_equal(
        generator.get(count),
        Prime.first(count)
      )
    end
  end


  def test_the_results_are_sorted
    results = generator.get(10)
    assert_equal results, results.sort
  end


  private

  def generator
    PrimeNumbers::NumberGenerator
  end
end
