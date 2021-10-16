consconst distributeEvenly = (array) => {
  let numbers = { 'one':1, 'two':2, 'three':3, 'four':4, 'five':5, 'six':6, 'seven':7, 'eight':8, 'nine':9, 'ten':10 }
    array.sort
};
// 1 create a lookup value
// 2 group array by the same values and create a new array
// 3 create a new array to collect evenly distributed numbers
// 4 select first index from each group
// 5 add each selection to evenly distributed numbers array
// 6 select the next index from each group
// 7 repeat 5-6 for the longest group array length
// 8 remove undefined from evenly distributed numbers array
