def sock_merchant(ar)
  colors = ar.sort.uniq
  colors.map { |k| ar.count(k) / 2 }.sum
end
