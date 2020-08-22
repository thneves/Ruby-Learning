

#splat parameter  -> *parameter
# used for when you don't know how many arguments the method will receive, so it can receive as many you wnat


def whats_up(greetings, *friends)
    friends.each do |friend|
         puts "#{greetings}, #{friend}"
    end  
end

whats_up('whats up','Alex',"Diogo",'Fabi')




#   BLOCKS ARE ARE NAMELESS METHODS, SIMILAR TO ANNONYMOUS FUNCTIONS IN JS

1.times do
    puts 'I am a block method'
end

1.times do { puts "me too!"}


# the difference between the block and method is that the block will be called and used just one time for some task, and will be vanished in the night