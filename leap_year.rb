def next_leap_years(return_number)
  leap_years = []
  year = 2017

  until leap_years.length == return_number
    if year % 100 != 0 && (year % 4 == 0 || year % 400 == 0)
      leap_years << year
    end
    year += 1
  end
  leap_years
end

# puts next_leap_years(100).inspect
puts next_leap_years(20).inspect

#test_suite
next_leap_years(20).map {|year| puts (year % 100).zero? }
