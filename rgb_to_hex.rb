# https://www.codewars.com/kata/513e08acc600c94f01000001/solutions/ruby
def rgb(r, g, b)
  nums=[r,g,b]
  new_num = []
  nums.each do |num|
    if num <= 0
      new_num << "00"
    elsif num >= 255
      new_num << "FF"
    elsif num > 0 && num < 10
      result = "0" + num.to_s
      new_num << result
    else
      hexed_num = num.to_s(16).upcase
      result = hexed_num.length == 2 ? hexed_num : "0" + hexed_num
      new_num << result
    end
   end
   new_num.join
end


 #hexadecimal is base 16, so any time you're converting from decimal to hex, you're always dividing by 16.

# Decimal	Hex
# 0	        0
# 1	        1
# ...	      ...
# 10	      A
# 11	      B
# 12	      C
# 13	      D
# 14	      E
# 15	      F
