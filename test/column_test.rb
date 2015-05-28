require 'minitest_helper'

class ColumnTest < Minitest::Test

  def setup
    @x = 2
    @products = [
      PrimeNumbers::Product.new(@x, 2),
      PrimeNumbers::Product.new(@x, 3),
      PrimeNumbers::Product.new(@x, 5)
    ]
    @column = PrimeNumbers::Column.new @x, @products
  end


  def test_attribute_header
    assert_equal @x, @column.header
  end


  def test_attribute_products
    assert_instance_of Array, @column.products
    assert_equal @products, @column.products
  end




  def test_array_access
    assert_instance_of PrimeNumbers::Product, @column[0]
    assert_equal @products[0], @column[0]
    assert_equal @products[-1], @column[-1]
  end


  def test_width
    assert_instance_of Fixnum, @column.width

    expected = @column.products.last.width
    assert_equal expected, @column.width

    more_products = [
      *@products,
      PrimeNumbers::Product.new(@x, 1000),
      PrimeNumbers::Product.new(@x, 10000)
    ]
    column = PrimeNumbers::Column.new @x, more_products
    assert_equal 5, column.width
  end




  def test_width_with_any_data_order
    list = build_products_list(@x, 1, 2, 10000, 3, 4)
    column = PrimeNumbers::Column.new(@x, list)

    assert_equal 5, column.width



    list = build_products_list(@x, 10000, 1, 2, 3, 4)
    column = PrimeNumbers::Column.new(@x, list)

    assert_equal 5, column.width
  end


  private

  def build_products_list(header, *args)
    args.map do |i|
      PrimeNumbers::Product.new(header, i)
    end
  end

end
