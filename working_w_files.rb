
 ## https://stackoverflow.com/questions/3682359/what-are-the-ruby-file-open-modes-and-options file mods

#reading a file

File.open('friends.txt', 'r') do |file|

    puts file.read().include? 'Fabi'

end



File.open('friends.txt', 'r') do |file|

    puts file.readline()
    puts file.readchar()

end


File.open('friends.txt', 'r') do |file|

 for line in file.readlines()
    puts line
 end

end


#storing it in a variable


file = File.open('friends.txt', 'r') do |file|

    for line in file.readlines()
       puts line
    end
   
file.close() #never forget to close the file, if using it with a varibale. 



#writing in a file.

File.open('friends.txt', 'a') do |file|

    file.write("\nToby")
     
  end