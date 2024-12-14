#=> Numbers

#=> Additions
puts 1 + 1   #=> 2

#=> Subtraction
puts 2 - 1   #=> 1

#=> Multiplication
puts 2   #=> 4

#=> Division
puts 10 / 5  #=> 2

#=> Exponent
puts 2 ** 2  #=> 4
puts  3 ** 4  #=> 81

#=> Modulus (find the remainder of division)
puts 8 % 2   #=> 0  (8 / 2 = 4; no remainder)
puts 10 % 4  #=> 2  (10 / 4 = 2 with a remainder of 2)

#=> Integers and Floats

puts 17 / 5    #=> 3, not 3.4

#=> Just replace one of the integers to a float.

puts 17 / 5.0  #=> 3.4

#=> To convert an integer to a float

puts 13.to_f

#=> To convert a float to an integer

puts 13.0.to_i
puts 13.9.to_i

#Some useful number methods

#=> even?

puts 6.even?
puts 7.even?

#=> Odd

puts 6.odd?
puts 7.odd?


#=> Strings

#=> Concatenation

#=> With the plus operator:

puts "Welcome " + "to " + "Odin"

#=> With the shovel operator:

puts "Welcome " << "Odin"

#=> With the concat method:

puts "Welcome ".concat("to   ").concat("Odin")

#=> Substrings

puts "hello"[0]
puts "hello"[0..1]
puts "hello"[0, 4]
puts "hello"[-1]

#=> Escape Characters

puts "hell\\o"
puts "hell\bo"
puts "hel\nlo"
puts "hel\slo"
puts "hel\tlo"
puts "hel\"lo\""
puts "he\'l\'lo"

#=> Interpolation

name = "Gui"

puts "hello #{name}"
puts 'hello #{name}'

#=> Common string methods

#=> capitalize
puts "hello".capitalize

#=> include?
puts "hello".include?("z")

#=> upcase
puts "hello".upcase

#=> downcase
puts "Hello".downcase

#=> empty?
puts "hello".empty?
puts "".empty?

#=> length
puts "hello".length

#=> reverse
puts "hello".reverse

#=> split
puts "hello".split
puts "hello".split{""}

#=> strip
puts "hello           ".strip

#=> sub
puts "he77o".sub("7", "l")

puts "he77o".gsub("7", "l")

puts "hello".insert(-1, " dude")

puts "hello world".delete("l")

puts "!".prepend("hello, ", "world")

#=> Converting other objects to strings

puts 5.to_s
puts nil.to_s
puts :symbol.to_s

#=> Symbols

#=> Create a symbol

:my_symbol

puts "string" == "string"

puts "string".object_id == "string".object_id

puts :symbol.object_id == :symbol.object_id

