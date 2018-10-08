const translate = (word) => {
  let rotate =  word.slice(1,word.length) +word[0] + 'ay';
  if (word.length < 2) {
    return word;
  }
  return (/^[^aeiou\W]/i.test(word) ? rotate : word + 'ay');
}
