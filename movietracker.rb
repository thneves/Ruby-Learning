

movies = {

    harry_potter: 4,
    batman: 4,
    the_hobbit: 3,
    inception: 4,
    pulp_fiction: 4,


}

puts "Type one of the following actions: \n 'add'\n 'update'\n 'display'\n 'delete'"

choice = gets.chomp

    case choice
    when 'add'
        puts 'Type a movie to add in the list'
        title = gets.chomp.to_sym
        if movies[title].nil?
            puts "Give this movie a rate between 1 and 5"
            rating = gets.chomp.to_i
            movies[title] = rating
            puts "#{title} was added to the list with a rate of #{rating}"
        else
            puts "This movie is already in the list"
        end

    when 'update'
        puts 'Choose a movie in the list to be updated'
        title = gets.chomp.to_sym
        if movies[title].nil?
            puts "This movie is not in the list, use 'add'"
        else
            puts "Give a new rating to this movie"
            rating = gets.chomp.to_i
            movies[title] = rating
            puts "#{title} has a new rate of #{rating}"
        end

    when 'display'
        movies.each do |movie,rating|
            puts "#{movie}: #{rating}"
        end

    when 'delete'
        puts 'Choose a movie to delete from the list'
        title = gets.chomp.to_sym
        if movies[title].nil?
            puts "The movie is not in the list"
        else
            movies.delete(title)
            puts "#{title} was deleted from the list"
        end

    end


        