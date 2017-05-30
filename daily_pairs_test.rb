require 'minitest/autorun'
require 'minitest/pride'
require './daily_pairs'

class DailyPairsTest < Minitest::Test
  def test_generate_pairs_creates_pairs
    pairs = DailyPairs.new

    assert_equal 4, pairs.generate_pairs.length
  end

  def test_valid_returns_correct_boolean_if_pair_has_been_used
    new_pairs = DailyPairs.new
    pairs.previous_pairs = [[[1, 6], [7, 5], [2, 3], [4, 0]]]
    pairs = [[1, 7], [5, 2], [4, 0], [6, 3]]

    refute new_pairs.valid?(pairs)
  end
end
