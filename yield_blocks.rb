fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# Add your code below!

doubled_fibs = fibs.collect { |x| x*2}

puts doubled_fibs

#collect method

# this method applies an expression to every method in the colelction

# this way returns a copy of the array but doesn't change the original array, to change the origianl array I must use the '!' at the end -> .collet!




#YIELD 

# the 'yield' keyword is used inside a method, so then we can create something with it outside the method, using a block of code.


def block_test
    puts "this is the method"
    puts "the next line can be created with a block using yield."
    yield
    puts "You're back to the method."
end

block_test {puts "You're inside yield block"} #so, this is how you use the yield block


#another example with parameter

def yield_name(name)

    puts "Inside the method"

    yield('Kim') #this already has 'Kim' as a parameter, so it won't be affect when using the block local variable

    puts "Betwen yield blocks"

    yield(name) # here 'name' will be anything I put as argument.

    puts "Back to the method"
end

yield_name('Ben') { |name| puts "my name is #{name}"} 



#another example

def doubled(num)
    yield(num)
end

doubled(18) { |n| puts n * 3} #num = 18
