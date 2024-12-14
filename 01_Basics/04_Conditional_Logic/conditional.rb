# frozen_string_literal: true

#=> Basic Conditional Statement

statement_to_be_evaluated = true

if statement_to_be_evaluated == true
  puts "do something"
end

#=> shorthand

puts "hello world" if 1 < 2

#=> Adding else and elsif
a = 5
b = 7

if a > b
  puts "#{a} is greater than #{b}"
elsif a == b
  puts "#{a} is equal to #{b}"
else
  puts "#{b} is greater than #{a}"
end


#=> Boolean Logic

#=> {==} (equals) returns true if the values compared are equal.

puts 5 == 5 # true
puts 5 == 6 # false

#=> != (not equal) returns true if the values compared are not equal.

puts 5 != 7 # true
puts 5 != 5 # false

#=> > (greater than) returns true if the value on the left of the operator is larger than the value on the right.

puts 7 > 5 # true
puts 5 > 7 # false

#=> < (less than) returns true if the value on the left of the operator is smaller than the value on the right.

puts 5 < 7 # true
puts 7 < 5 # false

#=> >= (greater than or equal to) returns true if the value on the left of the operator is larger than or equal to the value on the right.

puts 7 >= 7 # true
puts 7 >= 5 # true

#=> <= (less than or equal to) returns true if the value on the left of the operator is smaller than or equal to the value on the right.

puts 5 <= 5 # true
puts 5 <= 7 # true

#=> eql? checks both the value type and the actual value it holds

puts 5.eql?(5.0) # false; although they are the same value, one is an integer and the other is a float
puts 5.eql?(5)   # true

a = 5
b = 5
puts a.equal?(b) # true

a = "hello"
b = "hello"
puts a.equal?(b) # false

# => This happens because computers can’t store strings in the same efficient way they store numbers. Although the values of the variables are the same, the computer has created two separate string objects in memory.

#=> Spaceship Operator
# -1 if the value on the left is less than the value on the right;
# 0 if the value on the left is equal to the value on the right;
# 1 if the value on the left is greater than the value on the right.

puts 5 <=> 10
puts 10 <=> 10
puts 10 <=> 9

#=> Logical Operators (  && and || or)

if 1 < 2 && 6 < 7
  puts "everything is correct"
end

if 1 < 2 and 6 < 7
  puts "everything is correct"
end

if 1 < 2 || 6 < 6
  puts "at least one of the statements is correct"
end

if 1 < 2 or 6 < 6
  puts "at least one of the statements is correct"
end

#The ! operator reverses the logic of the expression.

puts !false
puts !(10 < 5)


#=> Case Statements

grade = "F"

did_i_pass = case grade
             when 'A' then "YES!"
             when 'D' then "Maybe not!"
             else "IMPOSSIBLE!"
             end

puts did_i_pass

grade = "A"

case grade
when 'A'
  puts "YES!"
  future_bank_balance = 5_000_00
when 'D'
  puts "Study more!"
  can_i_retire_soon = false
else
  puts "IMPOSSIBLE!"
  fml = true
end

#=> Unless statements: it only processes the code in the block if the expression evaluates to false

grade = "F"

unless grade == "A" || grade == "D"
  puts "You're so \"smart\"!"
else
  puts "WoW"
end

#=> Ternary Operator: is a one-line if...else statement that can make your code much more concise.
# syntax: condition ? <execute if true> : <execute if false>

age = 19

response = age < 18 ? "Enjoy it!" : "Good Luck!"
puts response


#=> Remember -->  above all else, your code needs to be readable and understandable by other people.