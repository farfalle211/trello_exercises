# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# and you may not use the same element twice.

# Example:

# Given nums = [2, 7, 11, 15], target = 9,

# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].https://coderpad.io/RNT3MDCZ#
  
def ken(input_array, target)
  new_hash = {}
  
  input_array.each_with_index do |number, index| #7, 1
    new_hash[number] = index
    #{2: 0}, {7: 1}

    if new_hash[target - number]
        #{7: 1} #{2: 0}
        return [new_hash[target - number], index]
    end
  end
    
  return 'No solution'    
  
  
  # input_array.each_with_index do |number, index| #0, 2
  #   input_array.each_with_index do |number_two, index2| #1, 7
  #     if index == index2
  #       next
  #     end
  #     if number + number_two == target
  #       return [index, index2]
  #     end
  #   end
  # end
end

print('solution: ', ken([2, 7, 11, 15], 44))

# O(n)^2







def duplicate(input_array)
  # input_array.each_with_index do |number, index|
  #   input_array.each_with_index do |number2, index2|
  #     if number == number2 && index != index2
  #       return true
  #     end
  #   end
  # end
  # return false
  hash = {}
  input_array.each_with_index do |number, index|
    if hash[number] 
      return true
    end
    hash[number] = true  #{1:true, }
  end
  return false
end

p duplicate([1, 2, 3, 1])








# Given an array of integers, find if the array contains any duplicates.

# Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

# Example 1:

# Input: [1,2,3,1]
# Output: true
# Example 2:

# Input: [1,2,3,4]
# Output: false
# Example 3:

# Input: [1,1,1,3,3,4,3,2,4,2]
# Output: true

def duplicate(input_array)
  # input_array.each_with_index do |number, index|
  #   input_array.each_with_index do |number2, index2|
  #     if number == number2 && index != index2
  #       return true
  #     end
  #   end
  # end
  # return false
  input_array.sort!

  input_array.each_with_index do |number, index|
    if number == input_array[index + 1]
      return true
    end
  end
  return false
  
  # hash = {}
  # input_array.each_with_index do |number, index|
  #   if hash[number] 
  #     return true
  #   end
  #   hash[number] = true  #{1:true, }
  # end
  # return false
  
end

p duplicate([1,2, 3, 4])
