const vowelsAndConsonants = (s) => {
    let vowels = s.match(/[aeiou]/gi);
    let consonants = s.match(/[^aeiou]/gi);
    let letters = vowels.concat(consonants);
    return letters.map(l => console.log(l));
}
