# input is always positive
# input can not be a collection of single value number
# At each step you can jump ahead in the array as far as the integer at the current cell or any smaller number of cells. 
# ex) if current cell is 4, you can jump 4 or less than 4
# so if jumping 4 ends up on let's say 0, you can jump lesser amount that will land on normal ineger
# DEFINITELY PLAY WITH DATA!!!!!!!!!!!!!
can_jump([2,0,1,5,0,0,3,0,0,3,1,0]),true)
can_jump([5]),false)
can_jump([2,5]),true)
can_jump([5,0,0,0]),true)
can_jump([1,1]),false)
can_jump([3,0,2,3]),true)
can_jump([4,1,2,0,1]),false)
canJump([5]) => false
canJump([2, 5]) => true
canJump([3, 0, 2, 3]) => true (3 to 2 then past end of array)
canJump([4, 1, 2, 0, 1]) => false
canJump([5, 0, 0, 0]) => true
canJump([1, 1]) => false

if arr.count <= 1 false
