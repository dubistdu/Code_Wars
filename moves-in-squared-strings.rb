# https://www.codewars.com/kata/moves-in-squared-strings-i/train/ruby

def vert_mirror(strng)
  strng.split("\n").map(&:reverse).join("\n")
end

def hor_mirror(strng)
  strng.split("\n").reverse.join("\n")
end

def oper(fct, s)
  fct.call(s)
end

# A higher-order function is a function that simply takes a function as parameter or returns a function as its result when called.
