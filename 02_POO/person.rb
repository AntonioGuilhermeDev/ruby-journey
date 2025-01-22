# frozen_string_literal: true

class Person
  def initialize(name = "random")
    @name = name #Instance
  end

  def talk(name = 'How are you?')
    "Hello, #{name}."
  end

  def greeting
    "Hi, my name is: #{@name}!"
  end

  def my_id
    "My ID is #{self.object_id}"
  end
end


pessoa1 = Person.new("Guilherme")
puts pessoa1.greeting
puts pessoa1.my_id
puts pessoa1.talk('fulano')

