# frozen_string_literal: true

# => Creating Hashes

#  the most basic way to create a hash is to use the hash literal of curly braces ({}).
# Keys and values are associated with a special operator called a hash rocket: =>.

my_hash = {
  'a random word' => 'bobabadaue',
  'My math test score' => 70,
  'an random array' => [1, 2, 3],
  'another hash' => {}
}

puts my_hash

# Alternative way to create

hash = Hash.new
p hash

# Hashes accepts anything

hash = { 9 => 'nine', :six => 6 }
p hash

# => Acessing Values: search by key

shoes = {
  'summer' => 'sandals',
  'winter' => 'boots'
}

p shoes['summer']

# Acessing a key that doesn't exists return nill
p shoes['fall']

# => Fetch: hashes have a fetch method that will raise an error when you try to access a key that is not in your hash.

# p shoes.fetch('fall')

# this method can return a default value instead of raising an error if the given key is not found.

p shoes.fetch('fall', 'tenis')

# => Adding and changing data

shoes['fall'] = 'sneakers'

p shoes

p shoes['summer'] = 'flip-flops'

p shoes

# => Removing data

p shoes.delete('summer')
p shoes

# => Methods: Hashes respond to many of the same methods as arrays do since they both employ Ruby’s Enumerable module

books = {
  'Infinite Jest' => 'David Foster Wallace',
  'Into the Wild' => 'Jon Krakauer'
}

p books.keys
p books.values

# => Merging two hashes

hash1 = { 'a' => 100, 'b' => 200 }
hash2 = { 'b' => 254, 'c' => 300 }
# Overwrited B and added C
p hash1.merge(hash2)

# => Symbols as hash keys:  This is predominantly because symbols are far more performant than strings in Ruby, but they also allow for a much cleaner syntax when defining hashes

# 'Rocket' syntax

american_cars = {
  :chevrolet => 'Corvette',
  :ford => 'Mustang',
  :dodge => 'Ram'
}

# 'Symbols' syntax

japanese_cars = {
  honda: 'accord',
  toyota: 'Corolla',
  nissan: 'Altima'
}

p american_cars[:ford]
p japanese_cars[:nissan]
