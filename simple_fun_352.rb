# https://www.codewars.com/kata/simple-fun-number-352-reagent-formula/train/ruby

# 1,2 (nope)
# 3,4 (nope)
# 5,6 (always together)
# 7or 8 (always should be in an array)

def isValid(formula)
  return false if !formula.include?(7) && !formula.include?(8)
  # ^^^ why is it not
  # return false if !formula.include?(7) || !formula.include?(8)
  # because...
  return false if formula.include?(1) && formula.include?(2)
  return false if formula.include?(3) && formula.include?(4)
  return false if (formula.include?(5) && !formula.include?(6)) || (formula.include?(6) && !formula.include?(5))
  true
end


# else
# true
# error -e:9: warning: else without rescue is useless

## Original method
# def isValid(formula)
#
#   if !formula.include?(7&&8)
#   false
  ## problem with above is that 'include' checks the first condition and returns value
  ## the same with the rest. So include will just check the first number.compare nd return true or false
#   elsif formula.include?(1&&2)
#   false
#   elsif formula.include?(3&&4)
#   false
#   elsif formula.include?(5) && !formula.include?(6)
#   false
#   elsif formula.include?(6) && !formula.include?(5)
#   false
#   else
#   true
#
#   end
#
# end

# Ugly but works

#def isValid(formula)

#   if !formula.include?(7) && !formula.include?(8)
#      false
#   elsif formula.include?(1) && formula.include?(2)
#     false
#   elsif formula.include?(3) && formula.include?(4)
#     false
#   elsif formula.include?(5) && !formula.include?(6)
#     false
#   elsif formula.include?(6) && !formula.include?(5)
#     false
#   else
#   true
#  end
#end
