# Main Exercises
#   - Create a Human class
#   - Create some instances to experiment with
#   - Give your Human some behaviour!
#   - Instantiate your Human with some state
class Human
  def initialize(name, steps)
    @name = name
    @steps = steps
  end

  def introduce
    return "Hello, my name is " + @name + "!"
  end

  def walk
    @steps += rand(10000)
    return "I walked " + @steps.to_s + " steps!"
  end

  def do
    activities = ["read", "code", "meditate", "workout", "cook", "tidy my home", "work", "fly a rocket ship =>", "eat", "sleep"]
    return "I am going to " + activities[rand(activities.length())] + " now."
  end

  person_1 = Human.new("Xia", 0)
  puts person_1.introduce
  puts person_1.walk
  puts person_1.do

  person_2 = Human.new("Tom", 0)
  puts person_2.introduce
  puts person_2.walk
  puts person_2.do
end