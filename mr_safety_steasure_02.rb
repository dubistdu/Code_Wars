# https://www.codewars.com/kata/mr-safetys-treasures/train/ruby
# tr(p1, p2) public
# Returns a copy of str with the characters in from_str replaced by the corresponding characters in to_str. If to_str is shorter than from_str, it is padded with its last character in order to maintain the correspondence.

# {}"hello".tr('el', 'ip')      #=> "hippo"
# {}"hello".tr('aeiou', '*')    #=> "h*ll*"

def unlock(str)
  str.downcase.tr("abcdefghijklmnopqrstuvwxyz","22233344455566677778889999")
end
