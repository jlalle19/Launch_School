# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

Kernel.puts("Welcome to the calculator")
Kernel.puts("Please enter the first number")
number_1 = Kernel.gets().chomp().to_i()
Kernel.puts("Please enter the second number")
number_2 = Kernel.gets().chomp().to_i()

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp().downcase 
result = false
case operator
when "add", "1"
  result = number_1 + number_2
when "subtract", "2"
  result = number_1 - number_2
when "multiply", "3"
  result = number_1 * number_2
when "divide", "4"
  result = number_1.to_f()/number_2.to_f()
else Kernel.puts("Invalid operation please try the calculator again.")

end

if result
  Kernel.puts("The result is #{result}")
end

