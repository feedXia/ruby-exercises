# This kata is designed to test your ability to extend the functionality of built-in classes. In this case, we want you to extend the built-in Array class with the following methods: square(), cube(), average(), sum(), even() and odd().

#   Explanation:

#   square() must return a copy of the array, containing all values squared
#   cube() must return a copy of the array, containing all values cubed
#   average() must return the average of all array values; on an empty array must return NaN (note: the empty array is not tested in Ruby!)
#   sum() must return the sum of all array values
#   even() must return an array of all even numbers
#   odd() must return an array of all odd numbers
#   Note: the original array must not be changed in any case!

#   Example

#   numbers = [1, 2, 3, 4, 5]

#   numbers.square()  # must return [1, 4, 9, 16, 25]
#   numbers.cube()    # must return [1, 8, 27, 64, 125]
#   numbers.average() # must return 3
#   numbers.sum()     # must return 15
#   numbers.even()    # must return [2, 4]
#   numbers.odd()     # must return [1, 3, 5]

class Array
  def square
    p map { |n| n ** 2 }
  end

  def cube
    p map { |n| n ** 3 }
  end

  def sum
    p reduce(:+)
  end

  def average
    p reduce(:+) / length
  end

  def even
    p select { |n| n % 2 == 0 }
  end

  def odd
    p select { |n| n % 2 != 0 }
  end
end

array = [1, 2, 3, 4, 5]
array.square()
#  => [1, 4, 9, 16, 25]
array
#  => [1, 2, 3, 4, 5], 'The original array must not be changed'
array.cube()
#  => [1, 8, 27, 64, 125]
array.sum()
#  => 15, 'Wrong sum'
array.average()
#  => 3, 'Wrong average'
array.even()
#  => [2, 4], 'Wrong result for even()'
array.odd()
#  => [1, 3, 5], 'Wrong result for odd()'

## Alternate Solutions
class Array
  def square
    map { |x| x * x }
  end

  def cube
    map { |x| x ** 3 }
  end

  def average
    sum / size
  end

  def sum
    reduce(:+)
  end

  def even
    select(&:even?)
  end

  def odd
    select(&:odd?)
  end
end
