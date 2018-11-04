def catalog(s, f)
  items = s.split("\n").select { |line| line[f] }
  return "Nothing" if items.empty?
  items.map { |item| "#{item[/\<name>(.*)<\/name>/,1]} > prx: $#{item[/\<prx>(.*)<\/prx>/,1]} qty: #{item[/\<qty>(.*)<\/qty>/,1]}" }.join("\n")
end
