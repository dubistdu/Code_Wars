def valid_parentheses(string)
  string = string.chars.select { |a| a == "(" || a == ")" }.join
  if string.size.even?  
    (string.size / 2).times { string.gsub!("()","") }
  end
  string.empty?
end
