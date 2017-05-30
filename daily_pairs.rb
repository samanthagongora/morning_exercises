# 7 pairs
# no repeats, forward or backward
require 'pry'

class DailyPairs
  attr_reader :names
  def initialize
    @names = ['Alex', 'Bernadette', 'Charles', 'Dana',
         'Eddie', 'Fern', 'Gus', 'Hiro']
    @previous_pairs = []
  end

  def generate_pairs
    indices = [0,1,2,3,4,5,6,7]
    pairs = []
    until pairs.length == 4
      i_1 = indices.sample
      indices.delete(i_1)
      i_2 = indices.sample
      indices.delete(i_2)
      pairs << [i_1, i_2]
    end
    puts pairs.inspect
  end

  def valid?(pairs)
    if @previous_pairs.length.zero?
      @previous_pairs << pairs
    else
      pairs.each do |pair_1|
        @previous_pairs.flatten(1).each do |pair_2|
          if pair_1 == pair_2 || [pair_1[1],[0]] == pair_2
            return false
          end
        end
      end
    end
    true
  end

end
