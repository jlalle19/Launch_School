# easy 2 question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# add ages for Marilyn and Spot to the existing hash

additional_ages = { "marilyn" => 22, "Spot" => 237}

ages.merge!(additional_ages)

puts ages