# https://www.codewars.com/kata/remove-b-m-w/train/ruby
def remove_bmw(str)
  unless str.is_a?(String)
    raise ArgumentError.new("This program only works for text.")
  end
  (str.chars - %w(b m w B M W)).join
end
