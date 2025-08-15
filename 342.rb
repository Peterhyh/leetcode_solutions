
# https://leetcode.com/problems/power-of-four/?envType=daily-question&envId=2025-08-15

def is_power_of_four(n)
    return false if n <= 0
    while n % 4 == 0
      n /= 4
    end
    n == 1 
end



# Testing
p is_power_of_four(16)

p is_power_of_four(5)

p is_power_of_four(1)

p is_power_of_four(-2147483648)