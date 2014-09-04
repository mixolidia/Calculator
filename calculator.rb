def calculate(f, a, b)
  if f == "\+" || f == "addition"
      add(a, b)
  elsif f == "\-" || f == "subtraction"
    subtract(a, b)
  elsif f == "\*" || f == "multiplication"
      multiply(a, b)
  elsif f == "\/" || f == "division"
    divide(a, b)
  elsif f == "\^" || f == "exponent"
      exponent(a, b)
  elsif f == "root" || f == "square root"
      square(a)
  else
    nil
  end
end

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a*b
end

def divide(a, b)
  a/b
end

def exponent(a, b)
  a**b
end

def square(a)
  Math.sqrt(a)
end

def formula(input)
 if input == "+" || input == "addition"
   symbol = "+"
 elsif input == "-" || input == "subtraction"
   symbol = "-"
 elsif input == "*" || input == "multiplication"
   symbol = "*"
 elsif input == "/" || input == "division"
   symbol = "/"
  elsif input == "^" || input == "exponent"
    symbol = "^"
  elsif input == "square root" || input == "root"
    symbol = "root"
 end
end

puts "Hello there!"
puts " What kind of math would you like to do?
  (+, -, *, /, ^, root )"
input = gets.chomp
answer ="The answer is "

puts "what is the first number?"
num1 = gets
if num1 !=  /\d/
  puts "Please enter a number not letters"
  num1 = gets.chomp.to_i
else
num1 = gets.chomp.to_i
end

if  num1 == ""
  puts "Press a number, not return."
  num1 = gets.chomp.to_i
else
  num1 = num1.to_i
end

puts "what is the second number?"
num2 = gets
if num2 !=  /\d/
  puts "Please enter a number not letters"
  num2 = gets.chomp.to_i
else
num2 = gets.chomp.to_i
end

num2 = gets.chomp
if  num2 == ""
  puts "Press a number, not return."
  num2 = gets.chomp.to_i
else
  num2 = num2.to_i
end

answer = calculate(input, num1, num2)

#puts "Wow, your answer is #{answer}. That's a big number"

# if input == "+" || input == "addition"
#   puts "The answer is #{num1} + #{num2} = #{answer}"
# elsif input == "-" || input == "subtraction"
#   puts "The answer is #{num1} - #{num2} = #{answer}"
# elsif input == "*" || input == "multiplication"
#   puts "The answer is #{num1} * #{num2} = #{answer}"
# elsif input == "/" || input == "division"
#   puts "The answer is #{num1} / #{num2} = #{answer}"
# elsif input == "^" || input == "exponent"
#   puts "The answer is #{num1} ^ #{num2} = #{answer}"
# elsif input == "square root" || input == "root"
#     puts "The square root of #{num1} = #{answer}"
# end

puts "The answer is #{num1} #{formula(input)} #{num2} = #{answer}."
