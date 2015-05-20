require 'minitest_helper'

class RendererTest < Minitest::Test

  def setup
    @list = [2, 3, 5, 7]
    @table = PrimeNumbers::Table.new(@list)
    @renderer = PrimeNumbers::Renderer.new(@table)
  end



  def test_render
    output = "   |  2 |  3 |  5 |  7 |
---+----+----+----+----+
 2 |  4 |  6 | 10 | 14 |
 3 |  6 |  9 | 15 | 21 |
 5 | 10 | 15 | 25 | 35 |
 7 | 14 | 21 | 35 | 49 |"

    assert_equal output, @renderer.render
  end

end
