# frozen_string_literal: true

# => Include?: if we want to know whether a particular element exists in an array, we can use the #include? method.

numbers = [5, 6, 7, 8]

puts numbers.include?(6)

puts numbers.include?(3)

# => Any: It returns true if any elements in your array or hash match the condition within the block; otherwise, it will return false.

numbers = [21, 42, 303, 499, 550, 811]

puts numbers.any? { |number| number > 500 }

puts numbers.any? { |number| number < 20 }

# => All: It only returns true if all the elements in your array or hash match the condition you set within the block; otherwise, it will return false.

fruits = ["apple", "banana", "strawberry", "pineapple"]

puts fruits.all? { |fruit| fruit.length > 3 }

puts fruits.all? { |fruit| fruit.length > 6 }

# => None: returns true only if the condition in the block matches none of the elements in your array or hash; otherwise, it returns false.

fruits = ["apple", "banana", "strawberry", "pineapple"]

puts fruits.none? { |fruit| fruit.length > 10 }

puts fruits.none? { |fruit| fruit.length > 6 }
