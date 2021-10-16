const findOutlier = (integers) => {
    let odd = integers.filter(integer => ](Math.abs(integer%2) == 1));
    let even = integers.filter(integer => (Math.abs(integer%2) == 0));
    return odd.length == 1 ? odd[0] : even[0]
  }