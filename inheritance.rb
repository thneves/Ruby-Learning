class Chef #SUPERCLASS

    def make_chicken
        puts 'The chef makes chicken.'
    end

    def make_salad
        puts 'The chef makes salad.'
    end

    def make_special
        puts 'The chef makes bbq dinner'
    end

end


class Vegan_Chef < Chef #it will gonna inheret all the methods of the Chef Class #SUB CLASS,

    def make_special #tmodifying the original make_special method from the original Class
        puts 'The chef makes vegan dinner' 
    end

    def make_pasta #adding new method, it's not in the original Chef class
        puts "The chef makes pasta"
    end

end


chef = Chef.new()
puts chef.make_special

vegan_chef = Vegan_Chef.new()
puts vegan_chef.make_special


## more examples

class Creature
    def initialize(name)
      @name = name
    end
    
    def fight
      return "Punch to the chops!"
    end
  end
  
  # Athe 'super' is used to call the original method from the SuperClass if necessary.
  
  class Dragon < Creature
    def fight
      puts "Instead of breathing fire. . . "
      super
    end
  end



  ## THERE CAN BE ONLY ONE SUPERCLASS FOR EACH SUBCLASS

  ## Ruby doesnt allow multiple inheritance

  class Creature
    def initialize(name)
      @name = name
    end
  end
  
  class Person
    def initialize(name)
      @name = name
    end
  end
  
  class Dragon < Creature; end   # THESE TWO LINES WILL THROWN AN ERROE
  class Dragon < Person; end  # ERROR - Superclass mismatch for class Dragon




  ### MORE EXAMPLES


  class Message

    @@messages_sent = 0

    def initialize(from, to)
        @from = from
        @to = to

    @@messages_sent += 1
    end
end


my_message = Message.new('Freedom', 'World')

class Email < Message

    def initialize(subject)
        @subject = subject
    end
end


class Post < Message

    def initialize(from,to)
        super
    end
end






  
