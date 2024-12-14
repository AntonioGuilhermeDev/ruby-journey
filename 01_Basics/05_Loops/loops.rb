# frozen_string_literal: true

# => Loop:  It’s an infinite loop that will keep going unless you specifically request for it to stop, using the break command.

# Loop is rarely used

i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

# => While:   s similar to the loop loop except that you declare the condition that will break out of the loop up front.

i = 0
while i < 10
  puts "i is #{i}"
  i += 1
end

# You can also use while loops to repeatedly ask a question of the user until they give the desired response:

while gets.chomp != "yes" do
  puts "Are you ready?"
end

# => Until: continues for as long as the condition is false.

i = 1
until i > 10 do
  puts "i is #{i}"
  i += 1
end

# => Ranges:  if we know exactly how many times we want our loop to run. It can be inclusive or exclusive

(1..5)     # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# Range of letters:

('a'..'z')

# => For Loop:  is used to iterate through a collection of information such as an array or range

for i in 'a'..'z' do
  puts i
end

# => Times Loop: run a loop for a specified number of times

5.times do
  puts "hello world"
end

10.times do |num|
  puts "Number is #{num}"
end

#It will always start in index 0, unlesss specified otherwise

# => Upto and Downto Loops: terate from a starting number either up to or down to another number, respectively.

5.upto(10) { |num| puts "#{num}"}
10.downto(1) { |num| puts "#{num}"}