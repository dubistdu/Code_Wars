const sockMerchant = (n, ar) => {
  let sockColorGroup = ar.reduce((a,b) => (a[b] = a[b] + 1 || 1) && a, {})
  let sockColorCounts = Object.values(sockColorGroup).filter((element)=> {
    return element > 1
  })

  let pairs = sockColorCounts.map((element)=> {
    return Math.floor(element/2);
  })
  return pairs.reduce((a,b)=> a+b);
}
