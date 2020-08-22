

class Person
    $creator = 'Matz' ##GLOBAL VARIABLE

    @@frame_count = 0 ## CLASS VARIABLE - @variable is a instance of a class variable and @@variable is a Original only class variable

    def initialize(framework)
        @framework = framework
    end

end

puts $creator



## virtual computer examples

class Computer

    @@users = {}

  
    def initialize(username, password)

        @username = username
        @password = password

        @files = {}

        @@users[username] = password
    end

   
    def create(filename)

        time = Time.now
        @files[filename] = time

        puts "#{filename} was created at #{time}"
    end


    def Computer.get_users
        return @@users 
    end
end


my_computer = Computer.new('my_user','pass123')


#### PRIVATE AND PUBLIC METHODS ####

## private methods are just that: they're private to the object where they are defined. This means you can
## only call these methods from other code inside the object. Another way to say this is that the method
## cannot be called with an explicit receiver. You've been using receivers all along-
## in 'object.method', 'object' is the receiver of 'method'.


class Dog
    def initialize(name,breed)
        @name = name 
        @breed = breed
    end

    public

    def bark
        puts "Woof!"
    end

    private
    
    def id 
        @id_number = 12345
    end
end



## ATTR_READER AND ATTR_WRITER

class Person
    attr_reader :name
    attr_writer :job

    def initialize(name, job)
        @name = name
        @job = job
    end
end

## ATTR_ACCESSOR FOR READ AND WRITE


class Person
   attr_accessor :name, :job

    def initialize(name, job)
        @name = name
        @job = job
    end
end





  


