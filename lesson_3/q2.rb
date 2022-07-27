# question 2


Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

what is != and where should you use it?
# != is "not equals" and should be used when making a comparison where you want the opposite of the condition you are checking to return positive.
put ! before something, like !user_name
# acts a not operator, meaning it turns truthyness to falseness
put ! after something, like words.uniq!
# ! after a method makes it mutative, meaning it makes a permenant change to the variable it's modifying
put ? before something
# when ? is used as a ternerary operator it acts as an if/else statement
put ? after something
# if after a method it means the method typically returns a boolean value, could also be a truthy value
put !! before something, like !!user_name
# converts the value to boolean by double negating it