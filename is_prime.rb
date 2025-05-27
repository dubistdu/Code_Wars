# https://www.codewars.com/kata/5262119038c0985a5b00029f
# v1
def is_prime(num)
    return true if num == 2
    return false if num <= 1

    i = 2
    until i > Math.sqrt(num)
        return false if num % i == 0
        i += 1
    end
    true
end

#v2 
def is_prime(num)
    return true if num == 2
    return false if num <= 1
    (2..Math.sqrt(num)).each do |i|
        return false if num % i == 0
    end
    
    true
end 