// https://www.codewars.com/kata/minminmax/javascript
function minMinMax(array) {
  let min = Math.min(...array);
  let max = Math.max(...array);
  let arr_all = [];
  while(min < max){ 
    !array.includes(min++) ? arr_all.push(min++) : arr_all;
    }
   return [ Math.min(...array), Math.min(...arr_all)-1 , max]
 }