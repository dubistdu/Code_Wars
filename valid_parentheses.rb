def valid_parentheses(string)
  string = string.chars.select { |a| a == "(" || a == ")" }.join
  string.size.even? ? (string.size / 2).times { string.gsub!("()","") } : false
  string.empty?
end
