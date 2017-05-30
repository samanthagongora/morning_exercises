require 'minitest/autorun'
require 'minitest/pride'
require './lib/swift_stats'

class SwiftStatsTest < Minitest::Test
  def test_strip_text_strips_text
    new_stats = SwiftStats.new
    file = File.read('lyrics.txt')

    assert strip_text(file).include?
  end
end
