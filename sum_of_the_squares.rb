
def square_sum(group)
  sum(square_group(group))
end

def sum_square(group)
  square_item(sum(group))
end


def square_item(sum)
  sum = sum ** 2
end

def square_group(group)
  squared = []

  group.each do |x|
    squared << x ** 2
  end
  squared
end

def sum(group)
  sum = 0

  group.each do |x|
    sum += x
  end
  sum
end


puts sum_square(1..100) - square_sum(1..100)

def sum(group)
  sum = group.reduce(:+)
end

def square_sum_group(group)
  group.reduce(:**2)
end
