const catalog = (s, article) => {
  const items = s.split("\n").filter(line => line.includes(article));
  if(items.length == 0) {
    return "Nothing" }
  else {
     return items.map(item => `${item.match("<name>(.*)<\/name>")[1]} > prx: $${item.match("<prx>(.*)<\/prx>")[1]} qty: ${item.match("<qty>(.*)<\/qty>")[1]}`).join("\n")
  }
}
