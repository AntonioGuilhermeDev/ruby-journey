# frozen_string_literal: true

# => Declaring a variable

age = 18

puts age

age = 18 + 5
puts age

#=> Shorthand Assigment Operator
#=> Age = Age {op} {number}

age += 4
puts age

age -= 4
puts age

age *= 4
puts age

age /= 4
puts age

#=> Variables are References

desired_location = 'Barcelona'
jonhs_location = 'Barcelona'

puts desired_location
puts jonhs_location

puts desired_location
puts jonhs_location
