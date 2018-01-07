
# https://www.codewars.com/kata/vowel-count/train/ruby
def getCount(string)
  vowel = %w(a, e , i, o, u)
  string.count (vowel.each {|v| v}).inject(:+)
end
