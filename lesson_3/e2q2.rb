# easy 2 question 2

munsters_description = "The Munsters are creepy in a good way."

=begin
  
Convert the string in the following ways (code will be executed on original munsters_description above):
"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
"The munsters are creepy in a good way."
"the munsters are creepy in a good way."
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."
=end
# ?
puts munsters_description.capitalize
puts munsters_description.downcase
puts munsters_description.upcase

#Solution
puts munsters_description.swapcase!