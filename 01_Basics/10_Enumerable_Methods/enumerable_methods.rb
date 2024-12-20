# frozen_string_literal: true

# => Code Without using enumerable methods:

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
    invited_list.push(friend)
  end
end

p invited_list

# => codes using enumerable methods:

p friends.select{ |friend| friend != 'Brian'}

p friends.reject{ |friend| friend == 'Brian'}


# => The each method: Calling #each on an array will iterate through that array and will yield each element to a code block, where a task can be performed

friends.each { |friend| puts 'Hello ' + friend }

# { |friend| puts "Hello, " + friend } is a block, and the code inside this block is run for each element in your array.

# |friend| is known as a block variable. You can use any variable name that you find helpful here

# => For multi-line blocks, the commonly accepted best practice is to change up the syntax to use do...end instead of {...}

my_array = [1, 2, 4, 10]

my_array.each do |number|
  puts "The number is #{number}"
end

my_hash = {one: 1, two: 2, three: 3}

my_hash.each do |key, value|
  puts "The key is #{key} and the value is #{value}"
end

# => It actually returns the original array you called #each on.
#
my_hash.each { |pair| puts "The pair is #{pair}" }

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

p friends.each { |friend| friend.upcase }

# => The each_with_index method: yields two block variables instead of one as it iterates through an array. The first variable’s value is the element itself, while the second variable’s value is the index of that element within the array. This allows you to do things that are a bit more complex

my_fruits = ['apple', 'banana', 'orange', 'pear', 'mango']

my_fruits.each_with_index { |fruit, index| puts fruit if index.even? }

# => Map: The #map method (also called #collect) transforms each element from an array according to whatever block you pass to it and returns the transformed elements in a new array.

my_friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

p my_friends.map{ |friend| friend.upcase }

# => Map and Gsub: overwrite

my_order = ['medium big mac', 'medium fries', 'medium milkshake']

p my_order.map { |item| item.gsub('medium', 'extra large') }

# => Select: The #select method (also called #filter) passes every item in an array to a block and returns a new array with only the items for which the condition you set in the block evaluated to true.

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

p friends.select { |friend| friend != 'Brian' }

responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
p responses.select { |person, response| response == 'yes'}

# => Reduce Method: The general idea is that it takes an array or hash and reduces it down to a single object. You should use #reduce when you want to get an output of a single value.

my_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p my_numbers.reduce { |number, sum| sum += number }

# => sum in this example) is known as the accumulator. The result of each iteration is stored in the accumulator and then passed to the next iteration. The accumulator is also the value that the #reduce method returns at the end of its work.

my_numbers = [5, 6, 7, 8]

p my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026

votes = ["Bob's Burger", "Mc'Donnalds"]

  result = votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end

p result

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end

p friends

p invited_friends(friends)
