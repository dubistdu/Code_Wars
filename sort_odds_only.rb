def sort_array(source_array)
  each_odd = source_array.select(&:odd?).sort.each
  source_array.map { |a| a.odd? ? each_odd.next : a }
end
