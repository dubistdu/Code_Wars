def narcissistic?( value )
  value.to_s.chars.map { |a| a.to_i**(value.to_s.length) }.inject(:+) == value
end

## ruby 2.4

def narcissistic?( value )
  value.digits.map { |a| a.**(value.to_s.length) }.sum == value
end
