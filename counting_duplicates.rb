# https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1

def duplicate_count(text)
  texts = text.upcase.split(//)
  freq = texts.uniq.map { |x| [x, texts.count(x)] }.to_h.values.select{|num| num > 1}.count
end
