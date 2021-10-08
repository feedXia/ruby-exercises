# Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.
# Examples:
# Input: 42145 Output: 54421
# Input: 145263 Output: 654321
# Input: 123456789 Output: 987654321

def descending_order(n)
  p n.to_s.split("").map(&:to_i).sort_by { |num| -num }.join.to_i
end

# alternative solutions

# def descending_order(n)
#   n.to_s.chars.sort.reverse.join.to_i
# end

# def descending_order(n)
#   n.digits.sort.reverse.join.to_i
# end

descending_order(0)
descending_order(1)
descending_order(123456789)
