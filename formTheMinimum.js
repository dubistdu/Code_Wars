function minValue(values){
  let unique_values = Array.from(new Set(values)).sort().join("");
  return parseInt(unique_values);
}
