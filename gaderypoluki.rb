# https://www.codewars.com/kata/ga-de-ry-po-lu-ki-cypher-vol-2/train/ruby

def encode(str)
  str.tr('gaderypolukiGADERYPOLUKI', 'agedyropulikAGEDYROPULIK')
end

alias decode encode

# alias_method can be redefined if need be. (it's defined in the Module class.)
#
# alias's behavior changes depending on its scope and can be quite unpredictable at times.
#
# Verdict: Use alias_method - it gives you a ton more flexibility.
#
# Usage:
#
# def foo
#   "foo"
# end
#
# alias_method :baz, :foo
####### syntax did not work for alias_method. Need to find out why ##############
