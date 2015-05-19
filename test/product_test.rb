require 'minitest_helper'

class ProductTest < Minitest::Test

  def test_initialization
    product = PrimeNumbers::Product.new 2, 3

    assert_equal product.x, 2
    assert_equal product.y, 3

    product = PrimeNumbers::Product.new "2", "3"

    assert_equal product.x, 2
    assert_equal product.y, 3
  end


  def test_it_exposes_horizontal_coords_getters
    product = PrimeNumbers::Product.new 2, 3

    assert_respond_to product, :x
    assert_respond_to product, :column
    assert_instance_of Fixnum, product.x
    assert_equal product.x, product.column
  end


  def test_it_exposes_vertical_coords_getters
    product = PrimeNumbers::Product.new 2, 3

    assert_respond_to product, :y
    assert_respond_to product, :row
    assert_instance_of Fixnum, product.y
    assert_equal product.y, product.row
  end


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
