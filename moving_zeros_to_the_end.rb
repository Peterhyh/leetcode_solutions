def moveZeros(arr)
  arr.sort_by { |x| x == 0 ? 1 : 0}
end

test_arr = [1,2,0,1,0,1,0,3,0,1]

# => 1, 2, 1, 1, 3, 1, 0, 0, 0, 0
puts moveZeros(test_arr)