
# A MODULE IS A WAY TO CREATE A CONTAINER OF METHODS, SO I CAN CALL THEM EASILY.

=begin
I can think of a module as a toolbox that contains a set methods and constants.
There are lots and lots of Ruby tools I might want to use. but it would clutter the interpreter
to keep them around all the time. For that reason, we keep a bunch of them in modules and
only pull in those module toolboxes when we need the constansts and methods inside!

It is like a class, but it can't create instances and have subclasses. It is just to store things.
=end
module Tools

    def say_hi(name)
        puts "hello #{name}"
    end

    def say_bye(name)
        puts "bye #{name}"
    end
    
end

include Tools
Tools.say_hi('thales')
Tools.say_bye('haters')

#ALLOW US TO ORGANIZE METHODS A LOT BETTER

# USE METHODS INSIDE A NAME REFERENCE.


# SYNTAX

##Capitalized CamelCase

# It's better to use contants instead of variables in modules, cause they ain't changing

##RUBY constants are written in ALL_CAPS and are separeted with underscores if there is more than one word

module MyLibrary
    
    FAV_BOOK = 'Dune'

end

puts MyLibrary::FAV_BOOK #Double colons to call FAVE_BOOK  const from MyLibrary module



## INCLUDING MODULES ##3

module Action
    def jump
        @distance = rand(4) +2
        puts "I jumped #{@distance} feet"
    end
end

class Rabit
    include Action

    attr_reader :name
    def initialize(name)
        @name = name 
    end
end

bunny = Rabit.new('bunny')

puts bunny.jump



### MORE EXAMPLES OF INCLUDE A MODULE


module MartialArts

    def hiding_master
        puts "I am invisible when I want"
    end

end

class Ninja
    include MartialArts
    def initialize (clan)
        @clan = clan
    end
end

class Samurai
    include MartialArts
    def initialize(shogun)
        @shogun = shogun
    end
 end



 # EXTENDING A MODULE


 # ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
    def now
      puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
    end
  end
  
  class TheHereAnd
    extend ThePresent
  end
  
  TheHereAnd.now