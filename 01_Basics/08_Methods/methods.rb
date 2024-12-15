# => Declaring a Method
#
def my_name
  puts 'My name is Guilherme'
end

# => Calling a method inside another method

def show_name
  'Guilherme'
end

def greeting
  name = show_name
  puts "Hello, #{name}"
end

# => Parameters and Arguments
# parameters act as placeholder variables in the template of your method
# arguments are the actual variables that get passed to the method when it is called.

# => Default Parameters
#
def greet(name = 'stranger')
  puts "Hello, #{name}"
end

# => In ruby the return is implicit but it can be used


def odd_or_even(number)
  unless number.is_a? Numeric
    return "this is not a number"
  end
  if number % 2 == 0
    puts 'its even'
  else
    puts 'its odd'
  end
end

my_name
greeting
greet
puts odd_or_even("a")

# => Chaining Variables: only works with built-in methods

phrase = ["be", "to", "not", "or", "be", "to"]
puts phrase.reverse.join(" ").capitalize

# => Predicate Methods: methods that have ? at the end are all predicate methods, which is a naming convention that Ruby uses for methods that return a Boolean.

puts 5.even?
puts 5.odd?
puts 80.between?(10, 100)

# => Bang Methods: Used for indicate that this method performs its action and simultaneously overwrites the value of the original object with the result

phrase = "HELLO, HELLO, HOW LOW!"
puts phrase
puts phrase.downcase
puts phrase

# Still the smae

puts phrase
puts phrase.downcase!
puts phrase

