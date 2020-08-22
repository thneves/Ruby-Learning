

friends = ['Alex Noles','Diogo','Fabi','Manu','Paul']




for friend in friends #the word friend here is a variable, it can be anything I want.
    puts friend
end



friends.each do |friend|
    puts friend
end

#both code do the same thing.


for index in 0..5
    puts index 
end


5.times do |index|
    puts index + 1
end




## expónetial METHOD

def pow(base_num, pow_num)
    result = 1
    pow_num.times do |element|
        result = result * base_num
    end
    return result
end

puts pow(2,10)



=begin
two write
a lot of lines
of code
=end


#MORE LOOPS

# BREAK keyword to set a condition to stop the lo0op

i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0 #break
end




##  NEXT to skip a condition 

i = 20
loop do
   i -= 1
  next if i % 2 != 0
  print "#{i}"
  break if i <= 0
end