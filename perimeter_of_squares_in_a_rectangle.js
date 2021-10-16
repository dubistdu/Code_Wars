function perimeter(n) {
  let arr = [0,1];
  for(let i = 0; i < n ; i++) {
    arr.push(arr[i] + arr[i+1]);
  }
  return 4 * arr.reduce((sum, num) => sum + num, 0);
}