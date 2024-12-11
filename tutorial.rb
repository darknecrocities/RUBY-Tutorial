# Ruby Learning Script: Learn Ruby from Basics to Advanced

# 1. Data Types
puts "String Example: Hello, World!"   # String
puts 42                               # Integer
puts 3.14                             # Float
puts true                             # Boolean
puts nil                              # Nil
puts "The sum of 2 and 3 is #{2 + 3}"  # String interpolation with calculation

# 2. Variables
name = "Ruby"
age = 28
puts "My name is #{name}, and I am #{age} years old."
height = 5.9
puts "My height is #{height} meters."
is_programmer = true
puts "Am I a programmer? #{is_programmer}"

# 3. Constants
PI = 3.14159
puts "Value of PI: #{PI}"

# 4. Conditional Statements
if age > 18
  puts "You are an adult."
elsif age == 18
  puts "Welcome to adulthood!"
else
  puts "You are a minor."
end

# 5. Ternary Operator
puts age > 18 ? "You are an adult" : "You are a minor"

# 6. Case Statements
day = "Tuesday"
case day
when "Monday"
  puts "Start of the week"
when "Tuesday"
  puts "Second day of the week"
else
  puts "Midweek or weekend"
end

# 7. Loops
# While Loop
i = 0
while i < 5
  puts "i is #{i}"
  i += 1
end

# Until Loop
i = 0
until i == 5
  puts "i is #{i}"
  i += 1
end

# For Loop
for num in 1..3
  puts "num is #{num}"
end

# Each Loop (for Arrays)
fruits = ["Apple", "Banana", "Cherry"]
fruits.each do |fruit|
  puts "I love #{fruit}!"
end

# 8. Arrays
# Creating an Array
numbers = [1, 2, 3, 4, 5]
puts numbers[0]  # Accessing the first element
puts numbers[-1] # Accessing the last element

# Adding and Removing Elements
numbers.push(6)      # Adds to the end of the array
numbers.unshift(0)   # Adds to the beginning
numbers.pop          # Removes the last element
numbers.shift        # Removes the first element

# Array Manipulation
doubled_numbers = numbers.map { |n| n * 2 }
puts doubled_numbers

# 9. Hashes (Dictionaries)
person = { name: "Ruby", age: 28, hobby: "Coding" }
puts person[:name]    # Accessing hash values
puts person[:age]
puts person[:hobby]

# Adding new key-value pairs
person[:city] = "San Francisco"
puts person[:city]

# Iterating through hashes
person.each do |key, value|
  puts "#{key}: #{value}"
end

# 10. Functions (Methods)
def greet(name)
  puts "Hello, #{name}!"
end

greet("Ruby Learner")

# Function with default arguments
def greet(name="User")
  puts "Hello, #{name}!"
end

greet            # Uses default "User"
greet("Rubyist")  # Uses provided argument

# Function returning a value
def add(a, b)
  return a + b
end
puts add(5, 3)  # Output: 8

# 11. Classes and Objects
class Animal
  attr_accessor :name, :species

  def initialize(name, species)
    @name = name
    @species = species
  end

  def speak
    puts "#{@name} the #{@species} says hello!"
  end
end

dog = Animal.new("Buddy", "Dog")
dog.speak

# Inheritance
class Dog < Animal
  def speak
    puts "#{@name} the #{@species} barks!"
  end
end

dog2 = Dog.new("Max", "Dog")
dog2.speak

# 12. Modules
module MathHelper
  def self.add(a, b)
    a + b
  end

  def self.multiply(a, b)
    a * b
  end
end

puts MathHelper.add(10, 5)
puts MathHelper.multiply(3, 4)

# Including modules in classes
class Calculator
  include MathHelper
end

calc = Calculator.new
puts calc.add(2, 3)   # Uses method from the module

# 13. File Operations
# Writing to a file
File.open("example.txt", "w") { |file| file.puts "Hello, Ruby!" }

# Reading from a file
File.open("example.txt", "r") { |file| puts file.read }

# 14. Exception Handling
begin
  puts 10 / 0
rescue ZeroDivisionError
  puts "Cannot divide by zero!"
ensure
  puts "This is always executed"
end

# 15. Regular Expressions
text = "The quick brown fox"
if text =~ /quick/
  puts "Found 'quick' in the string"
end

# 16. Advanced Topics: Lambdas and Procs
# Lambda Function
square = ->(x) { x * x }
puts square.call(5)

# Proc (Another type of closure)
multiply_by_two = Proc.new { |x| x * 2 }
puts multiply_by_two.call(5)

# 17. Advanced Topics: Metaprogramming
class DynamicMethod
  define_method(:dynamic_hello) do |name|
    puts "Hello, #{name}, from a dynamically created method!"
  end
end

dm = DynamicMethod.new
dm.dynamic_hello("Rubyist")

# Created by: Arron Kian M. Parejas
# Thanks me later :>>>