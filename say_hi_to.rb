# Example

class String
  def say_hi
    "Hi there!"
  end
end

my_object = "A string!"
my_object.say_hi

# Define another method on the string above, called say_hi_to. It should take one argument, a name. 
# It should return "Hi, #{name}!"
class String
  def say_hi_to(name)
    puts "Hi, #{name}!"
  end
end
my_object = "A String!"
my_object.say_hi_to("Xia")