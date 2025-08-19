# https://leetcode.com/problems/minimum-operations-to-make-binary-array-elements-equal-to-one-i/?envType=daily-question&envId=2025-08-15

def min_operations(nums)
    #Initialize a counter to see how many operations were performed
    #Loop to detect a 0 in the array. Starting where it detects a 0 and change 3 consecutive indices from 1 to 0 or 0 to 1.
    #Check if all of the numbers in the array now equals to 1. If so, return the counter. If not, return -1
    


    
    count = 0
    (0..nums.length - 3).each do |i|
      if nums[i] == 0
        nums[i], nums[i+1], nums[i+2] = nums[i]^1,nums[i+1]^1,nums[i+2]^1
        count += 1
        p nums
      end
    end
    nums.all? {|element| element == 1} ? count : -1
end

# Test
p min_operations([0,1,1,1,0,0])
