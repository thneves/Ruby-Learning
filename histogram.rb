

puts 'Enter your text here: '
text = gets.chomp

frequencies = Hash.new(0)

words = text.split(' ')

words.each do |item|
    frequencies[item] += 1
end

frequencies = frequencies.sort_by do |name, count|
    count 
end

frequencies.reverse!

frequencies.each do |name, count|
    puts "#{name} #{count.to_s}"
end

# This little program take a text and count the number of times a word in the text is repeated
# It takes a random text from a user input and split it into an array with each word of the text being an item
# Then creates a Hash with a default value of 0 for each key
# Takes the array, and add a new key to the Hash with each item of the array, and assigning it a value of +1 for each item, already counting if there is a repetetion
# It takes the Hash and turn it into and array sorting it by the item with low to more appearances, which is the biggest value between the keys in the hash
#finally, reverse it the biggest stay in the begin and print each item in orders
