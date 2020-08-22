

## SYMBOLS

# Ruby symbol is a sort of name. But it's not a string!

puts "string".object_id  # 17404360
puts "string".object_id  # 17404100

puts :symbol.object_id  # 802268
puts :symbol.object_id  # 802268


## wHILE THERE CAN BE MULTIPLE DIFFERENT STRINGS THAT ALL HAVE THE SAME VALUE.
## THERE IS ONLY ONE COPY OF ANY PARTICULAR SYMBOL AT A GIVEN TIME.


capitals = {
    :austria => 'vienna'
    :netherlands => 'amsterdam'
    :portugal => 'lisboa'
}

#Symbols are good hash keys for some reasions

#1 They're immutable, meaning they can't be changed once they're created;

#2 Only one copuy of any symbol exists at a given time, so they save memory;

# Symbol-as-keys are faster than stringg-as-keys because of the above two reasons

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

#  .to_sym  or .intern to convert string to symbol, the opposite can be done with .to_s

strings[0].intern

symbols = []

strings.each do |element|
  symbols.push(element.to_sym) 
end

  puts symbols #converting the strings to a an array of symbols