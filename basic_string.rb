#input: ["h", "e", "l", "l", "o"]
#output: ["o", "l", "l", "e", "h"]

# def reverse_string(input_string)
#   split_array = input_string.split("")
#   index = 0
#   reversed_array = []

#   while index > -1 * input_string.length
#     reversed_array << split_array[index - 1]
#     index -= 1
#   end
#   reversed_array.join
# end


# p reverse_string("hello")

# def reverse(string)
#   index = string.length - 1  
#   result = ""

#   while index >= 0
#     result += string[index]
#     index -= 1
#   end

#   return result
# end

# p reverse("hello")

# Given a string, return true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false

def false_or_true(string)
  if string.include? "$"
    return true
  else
    return false
  end
end

p false_or_true("i hate $ but i love money i know i know im crazy")
p false_or_true("abcdefghijklmnopqrstuvwxyz")