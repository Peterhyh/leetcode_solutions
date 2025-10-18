arr = [2,7,11,15]

n = 9


def two_sum(nums, target)
  coll = []
    nums.each_with_index do |num1, index1|
      coll.push(index1)
      num2 = target - num1

    end
end

two_sum(arr, n)
