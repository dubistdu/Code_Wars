#https://www.codewars.com/kata/54da539698b8a2ad76000228/solutions/ruby

# Grid
# return true if APP gives direction that will take exactly 10 minutes
# each side of block takes a minute
# if string length is more than 10 == false
# if string length is less than 10 == false


def isValidWalk(walk)
  min = walk.length
  directions = walk.map {|a| a.gsub(/[nsew]/,'n'=>1, 's'=>-1, 'e'=>2, 'w'=>-2).to_i}.inject(:+)
  if (min < 10 || min > 10)
    false
  elsif (min == 10 && directions == 0)
    true
  else
    false
  end
end
