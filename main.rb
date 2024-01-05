# Calculator for CMD

def add (x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def  multiply(x, y)
  x * y
end

def devide(x, y)
  if y != 0
    x / y
  else
    "Division by 0 error"
  end
end

def get_num(prompt)
  print "#{prompt}: "
  gets.chomp.to_f
end

def get_operation
  print "Select operation (+, -, *, /): "
  gets.chomp
end

def calculator
  puts "Simple calculator"
  puts "-----------------"

  number1 = get_num("Select first number")
  number2 = get_num("Select second number")
  operetion = get_operation

  case operetion
  when '+'
    result = add(number1, number2)
  when '-'
    result = subtract(number1, number2)
  when '/'
    result = devide(number1, number2)
  when '*'
    result = multiply(number1, number2)
  end
else
  result = "Error: Invalid operation"
end

puts "Result: #{result}"
end

calculator