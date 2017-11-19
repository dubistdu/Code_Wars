
# https://www.codewars.com/kata/strip-comments/train/ruby
# 4kyu

def solution(input, markers)

lines = input.split("\n")
split_lines = lines.map {|line| line.split(/[#!%^&*@$]/)[0].strip}.join("\n")

end

# 1. split text
# 2. "find all the comment markers. Remove them all including words just before it hit \n"
# Find index of the marker
# 3. Or divide array where comment marker happens and delete it

### regex shouldn't include space or , if that's what is not what the condition asks. Very strict
