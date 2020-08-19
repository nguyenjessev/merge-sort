require 'pry'

def merge_sort(nums)
  return nums if nums.length < 2

  left_nums = merge_sort(nums.slice(0, nums.length / 2))
  right_nums = merge_sort(nums.slice(nums.length / 2, nums.length - 1))

  result = []
  until left_nums.empty? || right_nums.empty? do
    result << (left_nums[0] < right_nums[0] ? left_nums.shift : right_nums.shift)
  end

  result.concat(left_nums, right_nums)
end
