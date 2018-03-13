def tribonacci (signature,n)
  return signature.take(n) if n < 3
  signature << signature[ signature.length - 3 ] + signature[ signature.length - 2 ] + signature[ signature.length - 1] until signature.length == n
  return signature
end
