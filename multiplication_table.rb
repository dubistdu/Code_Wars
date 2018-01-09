# https://www.codewars.com/kata/multiplication-table-for-number/train/ruby

def multiTable(number)
  (1..10).to_a.map {|a| "#{a} * #{number} = #{a*number}"}.join("\n")
end
