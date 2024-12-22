# frozen_string_literal: true

# => Nested arrays can be useful to store groups of similar data or positional data.

test_scores = [
  [90, 80, 75, 88, 50],
  [80, 80, 75, 88, 50],
  [80, 80, 75, 88, 50],
  [80, 80, 75, 88, 50]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

# => Accessing elements

p test_scores[1]
p teacher_mailboxes[2]
p teacher_mailboxes[0][0]
p teacher_mailboxes[1][0]
p teacher_mailboxes[2][0]

puts "-------------------------------------------"


# => Dig: If you want a nil value returned when trying to access an index of a nonexistent nested element, you can use the #dig method.

p teacher_mailboxes[3, 0]
p teacher_mailboxes.dig(3, 0)

puts "-------------------------------------------"

# => Creating new nested array

p mutable = Array.new(3, Array.new(2))

mutable[0][0] = 1000

p mutable

puts "-------------------------------------------"

p immutable = Array.new(3) { Array.new(2) }

immutable[0][0] = 1000

p immutable

puts "-------------------------------------------"

# => Adding and Removing Elements

p test_scores << [100, 99, 98, 97]

p test_scores[0].push(100)

p test_scores

puts "-------------------------------------------"

p test_scores.pop

p test_scores[0].pop

p test_scores

puts "-------------------------------------------"

# => Iterating over a nested array

teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row:#{row_index} = #{row}"
end

puts "-------------------------------------------"

teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
  end
end

puts "-------------------------------------------"

# => Flatten

teacher_mailboxes.flatten.each do |teacher_name|
  puts "Teacher name: #{teacher_name}"
end

puts "-------------------------------------------"

# => Nested Hashes

vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

# => Accessing data

p vehicles[:alice][:year]
p vehicles[:alice][:make]
p vehicles[:alice][:model]

puts "-------------------------------------------"

p vehicles[:blake][:model]
p vehicles[:blake][:year]
p vehicles[:blake][:make]

puts "-------------------------------------------"


p vehicles[:caleb][:year]
p vehicles[:caleb][:make]
p vehicles[:caleb][:model]

puts "-------------------------------------------"

# => Dig:

# p vehicles[:zoe][:year] #=> NoMethodError

p vehicles.dig(:zoe, :year)
#=> nil
p vehicles[:alice][:color]
#=> nil
p vehicles.dig(:alice, :color)
#=> nil

# => Adding and Removing Elements

p vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}
p vehicles

p vehicles[:dave][:color] = "red"
p vehicles

p vehicles.delete(:blake)
p vehicles

p vehicles[:dave].delete(:color)
p vehicles


# => Methods

p vehicles.select { |name, data| data[:year] >= 2020 }

p vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact

p vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
