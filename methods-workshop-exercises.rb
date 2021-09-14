# Q1
# Define the following methods for a calculator:
# - Add
# - Subtract
# - Divide
# - Multiply
# - Define a method called “run” which calls two of the methods above and outputs a number.

# Define a method called add, that
# - takes two numbers as arguments
# - and adds them together
# - then returns the new value
#
def add(add1, add2)
  add1 + add2
end

# Define a method called subtract, that
# - takes two numbers as arguments
# - and subtract the second number from the first
# - then return the new value
#
def subtract(sub1, sub2)
  sub1 - sub2
end

# Define a method called multiply, that
# - takes two numbers as arguments
# - multiplies one by the other
# - then returns the new value
#
def multiply(mul1, mul2)
  mul1 * mul2
end

# Define a method called divide, that
# - takes two numbers as arguments
# - and divides the first number by the second
# - then returns the new value
def divide(div1, div2)
  div1 / div2
end

# - Define a method called “run” which 
# calls two of the methods above and outputs a number.
def run(num1, num2)
  puts add(multiply(num1,num2), multiply(num2, num2))
end

run(4,8)

# **************************
# Q2
# Create a new file and fix the greet method (see below) so that it doesn’t violate SRP
# Single Responsibility Principle
# 3 responsibilities

def greet
  # greets a user
  # asks the user what their name is, takes their name and then says "user_name, it's lovely to meet you!"
  puts "Hello! What's your name?"
  user_name = gets.chomp
  puts "#{user_name}, it's lovely to meet you!"
end

# tells the user the weather today 
# - the weather should be randomly chosen and there should be 3 options
def weather
  w = ["Sunshine", "Rain", "Snow"]
  puts w[rand(3)]
end

# Tells a user the time now
def time
  puts Time.now
end

