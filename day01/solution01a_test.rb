gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative 'solution01a'

class AOC16Test < Minitest::Test

  def test_example_1
    expected = 5
    assert_equal expected, ::AOC16.new.blocks("R2, L3")
  end

  def test_example_2
    expected = 2
    assert_equal expected, ::AOC16.new.blocks("R2, R2, R2")
  end

  def test_example_3
    expected = 12
    assert_equal expected, ::AOC16.new.blocks("R5, L5, R5, R3")
  end

  def test_example_4
    expected = 50
    assert_equal expected, ::AOC16.new.blocks("R20, L30")
  end

end
