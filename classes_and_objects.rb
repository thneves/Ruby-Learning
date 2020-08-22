

#template for the of something I want to repreent, a real world object

 class Book

   attr_accessor :title, :pages, :autor

     def initialize(title, pages, autor)  # INITIALIZE METHOD IS CALLED WHEN CREATING A NEW INSTANCE OF THE CLASS
        @title = title
        @autor = autor
        @pages = pages

    end
  end

# A object is a instance of a book

book1 = Book.new('Dune', 600, 'Frank Herbert') # CALL THE INITILIZE METHOD INSIDE DE CLASS 
book2 = Book.new('Lord of the Rings', 600, 'Tolkien')

#OBJECT METHODS

class Student
    attr_accessor :name, :subject, :grade

    def initialize(name, subject, grade)
        @name = name 
        @subject = subject
        @grade = grade
    end

    def has_honors  #WE CAN DEFINE AN OBJECT THAT CAN BE USED FOR MY CLASSES.
        
        if @grade >= 8
            return true
        else
            return false
        end
    
    end

end

student1 = Student.new('Thales', 'Ruby', 9.8)
student2 = Student.new('Alex', 'Filmmaking', 9.9)

puts student2.has_honors  # LIKE THIS
    



