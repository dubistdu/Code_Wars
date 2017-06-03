# https://www.codewars.com/kata/mr-safetys-treasures/train/ruby

def unlock(str)
  str = str.downcase
  str = str.gsub(/[abc]/,"2")
  str = str.gsub(/[def]/,"3")
  str = str.gsub(/[ghi]/,"4")
  str = str.gsub(/[jkl]/,"5")
  str = str.gsub(/[mno]/,"6")
  str = str.gsub(/[pqrs]/,"7")
  str = str.gsub(/[tuv]/,"8")
  str = str.gsub(/[wxyz]/,"9")
end
