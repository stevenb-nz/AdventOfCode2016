gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative 'solution01b'

class AOC16Test < Minitest::Test

  def test_example_1
    expected = 4
    assert_equal expected, ::AOC16.new.blocks_first_repeat("R8, R4, R4, R8")
  end

end
