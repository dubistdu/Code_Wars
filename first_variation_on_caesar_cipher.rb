# Avoid using {...} for multi-line blocks - rubocop ???
def movingShift(s, shift)
  # replace each alpahbet with its index+shift place of alphabet
  alphadown = ("a".."z").to_a
  alphaup = ("A".."Z").to_a

  new_array = s.chars.each_with_index.map { |a,i|
    if (/[A-Z]/).match(a) && a.upcase
      alphaup[ (alphaup.index(a).to_i + shift + i) % 26 ]
    elsif (/[a-z]/).match(a) && a.downcase
      alphadown[ (alphadown.index(a).to_i + shift + i) % 26 ]
    else
      a
    end
  # split string by space but do not get rid of empty space
  # group them using array.each_slice(length of array/5).to_a  (it's enumerator)
  # if array items are less than 5, then add ""
  new_array.count < 5 ? new_array << "" : new_array
  }.join("").chars.each_slice((s.length.to_f / 5).ceil).to_a.map { |a| a.join("") }
end

def demovingShift(arr, shift)

  alphadown = ("a".."z").to_a
  alphaup = ("A".."Z").to_a

  arr.join("").chars.each_with_index.map { |a,i|
    if (/[A-Z]/).match(a) && a.upcase
      alphaup[ (alphaup.index(a).to_i - shift - i) % 26 ]
    elsif (/[a-z]/).match(a) && a.downcase
      alphadown[ (alphadown.index(a).to_i - shift - i) % 26 ]
    else
      a
    end
  }.join("")
end
