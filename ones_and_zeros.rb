# https://www.codewars.com/kata/578553c3a1b8d5c40300037c
def binary_array_to_number(arr)
  i = arr.length
  arr.map{|num| num * 2**i -= 1}.inject(0, :+)
end
