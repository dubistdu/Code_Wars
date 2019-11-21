def split_and_add(arr, n)
  n.times { 
    arr.length.odd? ? arr.unshift(0) : arr 
    arr = arr.each_slice(arr.length/2).to_a.transpose.map { |x| x.sum }
  }
  arr
end