require 'minitest_helper'

class TableTest < Minitest::Test

  def setup
    @list = [2, 3, 5, 7]
    @table = PrimeNumbers::Table.new(@list)
  end


  def test_attribute_primes
    assert_equal @list, @table.primes
  end


  def test_attribute_size
    assert_equal @list.length, @table.size
  end


  def test_attribute_columns
    assert_instance_of Array, @table.columns
    assert_instance_of PrimeNumbers::Column, @table.columns[0]

    assert_equal @list.length, @table.columns.length
    assert_equal @list.length, @table.columns[0].products.size
  end

end
