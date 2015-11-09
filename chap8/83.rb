puts 'Please type in your favorite quote. one line at a time'

words = []

while true
  word = gets.downcase.chomp
  words << word
  if word == ''
    break
  end
end

sorted_words = words.sort
sorted_words.each do |sorted_word|
  puts sorted_word
end
