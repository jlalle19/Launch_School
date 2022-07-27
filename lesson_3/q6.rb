# question 6

# Starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

start = "Four score and "
famous_words = start << famous_words
puts famous_words

# 2
famous_words = "seven years ago..."
puts "Four score and " + famous_words

#Solutions:
famous_words.prepend("Four score and ")

"Four score and " << famous_words