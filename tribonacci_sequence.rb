def tribonacci (signature,n)
  if n == 0
    []
  elsif n < 3
    signature.slice(0,n)
  else
    signature.push(signature[ signature.length - 3 ] + signature[ signature.length - 2 ] + signature[ signature.length - 1 ]) until signature.length == n
    signature
  end
end
