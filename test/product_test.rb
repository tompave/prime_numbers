require 'minitest_helper'

class ProductTest < Minitest::Test

  def test_value
    p1 = PrimeNumbers::Product.new 2, 3
    assert_equal p1.value, 2 * 3

    p2 = PrimeNumbers::Product.new 11, 23
    assert_equal p2.value, 11 * 23
  end


  def test_to_s
    product = PrimeNumbers::Product.new 11, 13
    assert_instance_of String, product.to_s
    assert_equal "143", product.to_s
  end


  def test_width
    product = PrimeNumbers::Product.new 11, 13
    assert_equal 3, product.width

    product = PrimeNumbers::Product.new 11, 1000
    assert_equal 5, product.width
  end


  def test_comparisons
    product = PrimeNumbers::Product.new 2, 5

    assert product == PrimeNumbers::Product.new(5, 2)
    refute product == PrimeNumbers::Product.new(5, 3)

    assert product < PrimeNumbers::Product.new(3, 11)
    assert product <= PrimeNumbers::Product.new(3, 11)

    assert product >= PrimeNumbers::Product.new(3, 2)
    assert product >= PrimeNumbers::Product.new(2, 5)
  end


  def test_sort
    p1 = PrimeNumbers::Product.new 2, 2
    p2 = PrimeNumbers::Product.new 2, 7
    p3 = PrimeNumbers::Product.new 5, 11
    p4 = PrimeNumbers::Product.new 100, 1000

    list = [p2, p4, p3, p1]
    assert_equal list.sort, [p1, p2, p3, p4]
  end

end
