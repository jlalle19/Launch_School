# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when "add", "1"
    'Adding'
  when "subtract", "2"
    'Subtracting'
  when "multiply", "3"
    'Multiplying'
  when "divide", "4"
    'Dividing'
  end
end

prompt("Welcome to the Calculator! Enter your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  number1 = ''
  loop do
    prompt("Please enter the first number")
    number1 = Kernel.gets().chomp().to_i()

    if valid_number?(number1)
      break
    else prompt("That's not a valid, non-zero number, try again.")
    end
  end

  number2 = ''
  loop do
    prompt("Please enter the second number")
    number2 = Kernel.gets().chomp().to_i()

    if valid_number?(number2)
      break
    else prompt("That's not a valid, non-zero number, try again.")
    end
  end

  operator_prompt = <<-MSG
What Operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  operator = ''
  iterate = true
  while iterate
    iterate = false
    prompt(operator_prompt)
    operator = Kernel.gets().chomp().downcase
    result =  case operator
              when "add", "1"
                number1 + number2
              when "subtract", "2"
                number1 - number2
              when "multiply", "3"
                number1 * number2
              when "divide", "4"
                number1.to_f() / number2
              else
                iterate = true
                prompt("Invalid operation please try again.")
              end
  end
  prompt("#{operation_to_message(operator)} the two numbers...")
  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again?)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Good Bye")
