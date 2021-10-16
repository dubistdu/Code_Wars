//https://www.codewars.com/kata/pyramid-array/train/javascript
function pyramid(n) {
  return Array(n).fill(1).map((elemeent, index) => Array(index + 1).fill(1));
}
