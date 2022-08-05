# medium 1 question 3

=begin

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

=end

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

puts factors(12)
puts factors(0)
# bonus 1: What is the purpose of the number % divisor == 0 ?
# To check if the divisor divides evenly into number and leaves no remainder (aka is a factor of number)

# bonus 2: What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# The method returns it's last line so by making the last line factors the method returns the value of factors.