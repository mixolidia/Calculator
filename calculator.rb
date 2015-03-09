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

def calculate(f, a, b)
  if f == "+" || f == "addition"
      add(a, b)
  elsif f == "-" || f == "subtraction"
    subtract(a, b)
  elsif f == "*" || f == "multiplication"
      multiply(a, b)
  elsif f == "/" || f == "division"
    divide(a, b)
  elsif f == "^" || f == "exponent"
      exponent(a, b)
  elsif f == "root" || f == "square root"
      square(a)
  else
    nil
  end
end

puts "Hello there!"
puts " What kind of math would you like to do?
  (+, -, *, /, ^, root )"
f = gets.chomp

puts "what is the first number?"
a = gets.to_i


if  a == ""
  puts "Press a number, not return."
  a = gets.chomp.to_i
else
  a = a.to_i
end

puts "what is the second number?"
b = gets.chomp.to_i


n = calculate(f, a, b)

puts "Your answer is #{n}."
