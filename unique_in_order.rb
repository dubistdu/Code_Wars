def unique_in_order(iterable)
  iterable.is_a?(String)? iterable.squeeze.chars : iterable.uniq
end

#String has to be inside of ()

### kata link
# https://www.codewars.com/kata/54e6533c92449cc251001667
