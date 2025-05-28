# https://www.codewars.com/kata/52597aa56021e91c93000cb0/train/ruby

#solution 1
def moving_zeros(arr)
    zeros = arr.count(0)
    arr.delete(0)
    zeros.times do
        arr << 0
    end
    arr
end

# solution 2

def moving zeros(arr)
    arr.sort {|num| num == 0 ? 1:0}
end