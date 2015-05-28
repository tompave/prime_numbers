require 'minitest_helper'

class LetterProductTest < Minitest::Test

  def setup
    @product = PrimeNumbers::LetterProduct.new("AB", "DE")
  end


  def test_value
    p1 = PrimeNumbers::LetterProduct.new("A", "B")
    assert_equal p1.value, "AB"

    assert_equal @product.value, "ABDE"
  end


  def test_to_s
    assert_instance_of String, @product.to_s
    assert_equal @product.value, @product.to_s
  end


  def test_width
    assert_equal 4, @product.width

    product = PrimeNumbers::LetterProduct.new("AA", "CDE")
    assert_equal 5, product.width
  end


  def test_comparisons
    # product = PrimeNumbers::LetterProduct.new("2", "5")

    # assert product == PrimeNumbers::LetterProduct.new("5", "2")
    # refute product == PrimeNumbers::LetterProduct.new("5", "3")

    # assert product < PrimeNumbers::LetterProduct.new("3", "11")
    # assert product <= PrimeNumbers::LetterProduct.new("3", "11")

    # assert product >= PrimeNumbers::LetterProduct.new("3", "2")
    # assert product >= PrimeNumbers::LetterProduct.new("2", "5")
  end


  def test_sort
    # p1 = PrimeNumbers::LetterProduct.new(2, 2)
    # p2 = PrimeNumbers::LetterProduct.new(2, 7)
    # p3 = PrimeNumbers::LetterProduct.new(5, 11)
    # p4 = PrimeNumbers::LetterProduct.new(100, 1000)

    # list = [p2, p4, p3, p1]
    # assert_equal list.sort, [p1, p2, p3, p4]
  end

end
