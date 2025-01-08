# frozen_string_literal: true

class Dog
  def initialize(name, age)
    @name = name
    @age = age
    puts "#{@name} is #{@age} years old"
  end
end

sparky = Dog.new("Thor", 5)