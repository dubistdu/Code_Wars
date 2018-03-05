var number = function(busStops){
  const inBus = []
  const outBus = []
  busStops.forEach(function(busstop){
    inBus.push(busstop[0])
    outBus.push(busstop[1])
  })
  var sumInBus = inBus.reduce(function(a, b) { return a + b; }, 0)
  var sumOutBus = outBus.reduce(function(a, b) { return a + b; }, 0)
  return sumInBus - sumOutBus
}
