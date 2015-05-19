require 'minitest_helper'

class RendererTest < Minitest::Test

  def setup
    @list = [2, 3, 5, 7]
    @table = PrimeNumbers::Table.new(@list)
    @renderer = PrimeNumbers::Renderer.new(@table)
  end



  def test_render
  end

end
