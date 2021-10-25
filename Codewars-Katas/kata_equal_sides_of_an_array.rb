# You are going to be given an array of integers.
# Your job is to take that array and find an index N
# where the sum of the integers to the left of N
# is equal to the sum of the integers to the right of N.
# If there is no index that would make this happen, return -1.

def find_even_index(arr)
  arr.each do |n|
    i = 0
    while i < arr.length
      sum_arr_first = arr.slice(0, i).sum
      sum_arr_second = arr.slice(i + 1, arr.length - i).sum
      if sum_arr_first != sum_arr_second
        if i == arr.length - 1
          return -1
        end
        i += 1
      else
        return i
        break
      end
    end
    break
  end
end

# Alternative Solutions

# def find_even_index(arr)
#   left_sum = 0
#   right_sum = arr.reduce(:+)

#   arr.each_with_index do |e, ind|
#     right_sum -= e

#     return ind if left_sum == right_sum

#     left_sum += e
#   end

#   -1
# end

# def find_even_index(ary)
#   0.upto(ary.length).select{|l| ary[0..l].reduce(:+) == ary[l..-1].reduce(:+)}.first || -1
# end

# def find_even_index(arr)
#   arr.length.times do |idx|
#     if arr[0...idx].inject(0, :+) == arr[(idx + 1)..-1].inject(0, :+)
#       return idx
#     end
#   end

#   return -1
# end

# Tests
find_even_index([1, 2, 3, 4, 3, 2, 1]) # 3
find_even_index([1, 100, 50, -51, 1, 1]) # 1
find_even_index([1, 2, 3, 4, 5, 6]) # -1
find_even_index([20, 10, 30, 10, 10, 15, 35]) # 3
find_even_index([20, 10, -80, 10, 10, 15, 35]) # 0
find_even_index([10, -80, 10, 10, 15, 35, 20]) # 6
find_even_index(Array(1..100)) # -1
find_even_index([0, 0, 0, 0, 0]) # 0
find_even_index([-1, -2, -3, -4, -3, -2, -1]) # 3
find_even_index(Array(-100..-1)) # -1
