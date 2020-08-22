

puts 'Enter your words'
text = gets.chomp

puts 'Words to be redacted: '
redact = gets.chomp

words = text.split(' ')

words.each do |item|
    if item == redact
        print 'redacted'
    else 
        print item + ' '
    end
end
