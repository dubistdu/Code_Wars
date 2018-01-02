def cookie(x)
  name =
    if x.is_a? String
      "Zach"
    elsif x.is_a? Numeric
      "Monica"
    else
      "the dog"
    end
  "Who ate the last cookie? It was #{name}!"
end


#https://www.codewars.com/kata/55a996e0e8520afab9000055/solutions/ruby
