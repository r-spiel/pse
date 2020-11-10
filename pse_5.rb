#PSE #5 Nov. 6, 2020
##Given a list of numbers and a target sum, return the number of pairs that add up to the given sum.
# # list = [1, 2, 4, 5]
# # sum = 5
#
# # list = [97, 51, 49, 35, 3, 65]
# # sum = 100
# #Number of pairs: 3
#
# # list = [97, 51, 49, 35, 3, 65, 40, 25, 60, 30, 75]
# # sum = 100
# #Number of pairs: 5
#
# # list = []
# # sum = 5
#

####SOLUTION WITH HASHMAP:
def find_sum_numbers(list, sum)
  hash = {}

  count = 0

  list.each do |num| #O(n) - time
  hash[num] = true
  end

  hash.each_key do |key|
    pair = sum - key #100 - 97 => 3 look for 3 in the hash
    if hash[pair] # O(1) - time
      count += 1
      #hash.delete(key)  #if delete, then there is only 1 set, no need to return /2
    end
  end
  return count/2
end


####SOLUTION BRUTE FORCE:

# def find_sum_numbers(list, sum)
#   count = 0
#   length = list.length
#
#   i = 0
#   while i < length
#
#     j = i +1
#     while j < length
#       if list[i] + list[j] == sum
#         count += 1
#       end
#       j += 1
#     end
#     i += 1
#   end
#
#   p count
#   return count
# end

p find_sum_numbers(list, sum)