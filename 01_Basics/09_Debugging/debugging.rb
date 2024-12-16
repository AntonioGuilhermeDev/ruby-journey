# frozen_string_literal: true
require 'pry-byebug'
# => Debugging with puts

def isogram?(string)
  original_length = string.length
  puts original_length
  string_array = string.downcase.split("")
  puts string_array
  unique_length = string_array.uniq.length
  p unique_length
  puts original_length == unique_length
end

isogram?("Odin")

# => Debugging with puts and nil:

puts "Using puts:"
puts []
p "Using p:"
p []

# => Debugging with Pry-Byebug

def isograma?(string)
  original_length = string.length
  string_array = string.downcase.split("")
  unique_length = string_array.uniq.length
  original_length == unique_length
  binding.pry
end

isograma?("Odin")