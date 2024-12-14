# frozen_string_literal: true

# => Arrays: a collection of data that can contain any combination of variables, numbers, strings, or other Ruby objects (including other arrays).
# Although it is advisable to keep similar data types in any one array.

# => Creating an array

num_array = [1, 2, 3, 4, 5]
str_array = ['hello', 'world', 'ola', 'mundo']

# => Arrays can also be created by calling the Array.new method. When you call this method, you can also include up to 2 optional arguments (initial size and default value

p Array.new               #=> []
p Array.new(3)            #=> [nil, nil, nil]
p Array.new(3, 7)         #=> [7, 7, 7]
p Array.new(3, true)      #=> [true, true, true]

# => Acessing Elements

p str_array[0]
p str_array[1]
p str_array[2]
p str_array[-1]

p num_array[0]
p num_array[1]
p num_array[-1]

# => Ruby provides the first and last array methods.

p str_array.first
p str_array.last

# =>  these methods can take an integer argument, e.g., my_array.first(n) or my_array.last(n)

p str_array.first(2)
p str_array.last(2)

# return a new array that contains the first or last n elements of my_array, respectively.

# => Adding and Removing Elements

num_array = [1, 2]

# => Adding: Adding an element to an existing array is done by using the #push method or the shovel operator <<.

num_array.push(3)
num_array << 4
p num_array

# => Removing: The #pop method will remove the element at the end of an array and return the element that was removed.

num_array.pop
# 4 removed
p num_array

# => Removing the first element

num_array = [10, 20, 25]

num_array.shift
# 10 Removed
p num_array

# => Adding the first element

num_array.unshift(15)
# 15 added
p num_array

# => Adding and Subtracting Arrays

# Adding two arrays will return a new array built by concatenating them, similar to string concatenation.
# The concat method works the same way.

a = [1, 2, 3]
b = [3, 4, 5]

p a + b
p a.concat(b)

# Subtracting two arrays returns a copy of the first array, removing any elements that appear in the second array.

p a - b

# => Basic Methods

array = [1, 2, 3, 5, 6, 7, 8, 9, 10]

# Is Empty?
puts array.empty?

# Length

puts array.length

# Reverse

p array.reverse

# Includes?

puts array.include?(3)
puts array.include?('4')

# Join

puts array.join
puts array.join('--')