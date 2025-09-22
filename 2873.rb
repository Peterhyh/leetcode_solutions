
nums = [12,6,1,2,7]

def max_triplet_value(nums)
  n = nums.length #integer of how many elements are in the array
  max_value = 0  # default if all values are negative



  

  (0...n).each do |i|
    (i+1...n).each do |j|
      (j+1...n).each do |k|
        value = (nums[i] - nums[j]) * nums[k]
        max_value = [max_value, value].max
      end
    end
  end

  max_value
end

p max_triplet_value(nums)