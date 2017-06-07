def scale(strng, k, v)
string = strng.chars.map {|word| word == "\n" ? word :  word*k }.join
string == "" ? string : string.split("\n").map {|word| word+("\n"+ word)*(v-1)}.join("\n")

end

# join.split("\n") need to use "\n" not '\n'
