def missing_angle(h, a, o)
  if h == 0
    (Math.atan(o / a.to_f) * 180 / Math::PI).round

  elsif a == 0
    (Math.asin(o / h.to_f) * 180 / Math::PI).round

  elsif o == 0
    (Math.acos(a / h.to_f) * 180 / Math::PI).round
  end

end

# https://www.codewars.com/kata/58417e9ab9c25c774500001f

# if h == 0
# o/a (tan)

# elsif a == 0
# o/h(sine)

# elsif o == 0
# a/h(cos)


# Computers and libraries usually work in radians, not degrees
# Mathematicians work in radians so computers do

# There are 360 degrees and 2 pi radians in a circle. So to convert degrees to radians, divide by 360 and multiply by 2 * pi (approx. 6.28).
# Or equivalently, divide by 180 and multiply by pi.
# PI == 3.14 rad
