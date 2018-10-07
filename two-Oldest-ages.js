// solution 1

const twoOldestAges = (ages) => {
  let arrLength = ages.length;
  return ages.sort((a,b) => a - b).slice(-2);
  return ages;
}

//Oneliner

const twoOldestAges = ages => ages.sort((a, b) => a > b).slice(-2);
