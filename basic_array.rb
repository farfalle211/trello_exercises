require 'rspec'

class BasicArray

    def reduce_sum(input_array)
      # Return the sum of all numbers in a given array.
      input_array.reduce {|sum, enum| sum + enum }
    end

    def select_less_than_100(input_array)
      # Given an array of numbers, return a new array that contains all numbers from the original array that are less than 100.
      input_array.select {|number| number < 100 }

      #without select
      # new_array = []
      # input_array.each {|number| new_array << number if number < 100}
      # new_array
    end

    def map_double(input_array)
      # Given an array of numbers, return a new array whose values are the original array’s value doubled.
    end

    def array_max(input_array)
      # Return the greatest value from an array of numbers.
    end

    def reduce_product(input_array)
      # Given an array of numbers, return the product of all the numbers.
    end

    def reverse_array(input_array)
      # Given an array, return a new array that contains the original array’s values in reverse.
    end

    def skip_it(input_array)
      # Given an array of numbers, return a new array in which only select numbers from the original array are included, based on the following details:

      # The new array should contain the first number from the original array. The next number that should be included depends on what the first number is. The first number dictates how many spaces to the right the computer should move to pick the next number. For example, if the first number is 2, then the next number that the computer should select would be two spaces to the right of this one. If the next number is 4, then the next number after that is the one four spaces to the right of this 4. And so on and so forth until the end of the array is reached.
      # Input:
      # [2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]
      # Output:
      # [2, 3, 1, 2, 2, 1, 5, 2, 2]
      new_array = []
      index = 0
      while index < input_array.length
        new_array << input_array[index]
        index += input_array[index]
      end
      new_array
    end

end

RSpec.describe BasicArray do
  
  let(:algorithm) { BasicArray.new }

  describe '#reduce_sum' do
    it 'should return 10 when given [1,2,3,4]' do
      expect(algorithm.reduce_sum([1,2,3,4])).to eq(10)
    end

    it 'should return 20 when given [2, 4, 6, 8]' do
      expect(algorithm.reduce_sum([2, 4, 6, 8])).to eq(20)
    end

    it 'should return 28 when given [4, 6, 8, 10]' do
      expect(algorithm.reduce_sum([4, 6, 8, 10])).to eq(28)
    end

    it 'should return 12 when given [1, 1, 10]' do
      expect(algorithm.reduce_sum([1, 1, 10])).to eq(12)
    end
  end

  describe '#select_less_than_100' do 
    it 'should return [88, 55, 33] when given [121, 88, 444, 55, 33]' do 
      expect(algorithm.select_less_than_100([121, 88, 444, 55, 33])).to eq([88, 55, 33])
    end

    it 'should return [20,-100] when given [20,1000,-100]' do
      expect(algorithm.select_less_than_100([20,1000,-100])).to eq([20, -100])
    end

    it 'should return [] when given [3000, 20000, 655]' do
      expect(algorithm.select_less_than_100([3000, 20000, 655])).to eq([])
    end
  end

  describe '#skip_it' do
    it 'should return [1, 3, 2, 1] when given [1, 3, 2, 2, 2, 1, 1]' do 
      expect(algorithm.skip_it([1, 3, 2, 2, 2, 1, 1])).to eq([1, 3, 2, 1])
    end

    it 'should return [3] when given [3]' do 
      expect(algorithm.skip_it([3])).to eq([3])
    end

    it 'should return [1, 10] when given [1, 10, 2, 3, 4, 5, 6, 7, 8]' do 
      expect(algorithm.skip_it([1, 10, 2, 3, 4, 5, 6, 7, 8])).to eq([1, 10])
    end
  end


end



#PROBLEM 1
# Return the sum of all numbers in a given array.

# Input: [1, 2, 3, 4]
# Output: 10


# def calculate_sum(array)
#   sum = 0
#   index = 0
#   while index < array.length
#     sum += array[index]
#     index += 1
#   end
#   sum

#   sum = 0
#   array.each {|number| sum += number}
#   sum

#   array.reduce {|sum, enum| sum + enum }
# end


# p calculate_sum([1, 2, 3, 4, 10, 20])


#PROBLEM 2
# Given an array of numbers, return a new array that contains all numbers from the original array that are less than 100.

# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

# def less_than_100(array)
#   index = 0
#   less_than_100_array = []
#   while index < array.length
#     if array[index] < 100
#       less_than_100_array << array[index]
#     end
#     index += 1
#   end
#   less_than_100_array

#   array.select {|number| number < 100 }
# end

# p less_than_100([99, 101, 88, 4, 2000, 50])


#PROBLEM 3
# Given an array of numbers, return a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

# def doubled(array)
#   array.map {|number| number * 2}
# end

# p doubled([4, 2, 5, 99, -4])

#PROBLEM 4
# Return the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 20

# def greatest_value(array)
#   array.max
#   max = array[0]
#   array.each {|number| max = number if number > max}
#   max
# end

# p greatest_value([5, 17, -4, 20, 12])

#PROBELM 5 
# Given an array of numbers, return the product of all the numbers.

# Input: [1, 2, 3, 4]
# Output: 24 (1 2 3 * 4)


#PROBLEM 6
# Given an array, return a new array that contains the original array’s values in reverse.

# Input: [1, 2, 3, 4, 5]
# Output: [5, 4, 3, 2, 1]

# def array_reverse(array)
#   reversed_array = []
#   index = -1

#   array.length.times do
#     reversed_array << array[index]
#     index -= 1
#   end
#   reversed_array
# end

# p array_reverse([1, 2, 3, 4, 5, 6])

