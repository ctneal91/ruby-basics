# intro stuff
puts 1 > 2
puts 1 < 2

puts 5 >= 5
puts 5 <= 4

puts 'cat' < 'dog'

puts 'bug lady' < 'Xander'
puts 'bug lady'.downcase < 'Xander'.downcase

#while loops
while true
  input = gets.chomp
  puts input
  if input.downcase != 'bye'
    break
  end
end
puts 'Come again soon!'

#bottles of beer lyrics
bottles_of_beer = 99
while bottles_of_beer > 0
  puts bottles_of_beer.to_s + " bottles of beer on the wall."
  puts bottles_of_beer.to_s + " bottles of beer."
  puts "Take one down. Pass it around."
  bottles_of_beer = bottles_of_beer - 1
  puts bottles_of_beer.to_s + " bottles of beer on the wall."
end

#Granny response
puts 'HELLO, DEAR! WHAT HAVE YOU BEEN UP TO?'
while true
  response = gets.chomp
  if response.upcase == response
    break
  end
  puts 'HUH?! SPEAK UP, SONNY'
end
random_number = rand(21)
year = 1930 + random_number
puts 'NO, NOT SINCE ' + year.to_s + '!'

#Leap year
while true
  puts "Give me starting year"
  starting_year = gets.chomp.to_i
  if starting_year > 0
    break
  else
    puts "Please give me year greater than or equal to zero."
  end
end

while true
  puts "Give me an ending year."
  ending_year = gets.chomp.to_i
  if ending_year > starting_year
    break
  else
    puts "Your ending year must be greater than your starting year."
    puts "For your reference, your starting year is " + starting_year.to_s + "."
  end
end

puts "The leap years are:"
while (ending_year - starting_year) >= 0
  if (ending_year%4 == 0) && (ending_year%100 != 0)
    puts ending_year
  elsif ending_year%400 == 0
    puts ending_year
  end
  ending_year = ending_year - 1
end
