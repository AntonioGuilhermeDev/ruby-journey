# frozen_string_literal: true
module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

spark = GoodDog.new
bob = HumanBeing.new

spark.speak('Woof! Woof!')
bob.speak('Hello!')

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors