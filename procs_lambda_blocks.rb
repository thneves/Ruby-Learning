

# I can think of 'procs' as savd name for block, because you can't store a yield block in  variable and use it as an object

# so you can use procs to do so, this is useful, to keep your code clean, so you don't have to DRY; 


multiple_of_3 = Proc.new do |n|
    n % 3 == 0
end

print (1...100).to_a.select(&multiple_of_3)

#procs syntax

cube = Proc.new { |anything| anything * 3}


# now we can take this and pass to a method, instead of writing the block over and over

[1,2,3].map!(&cube)

[213,312,321,34,].collect!(&cube)

# one more example

float_numbers = [1.3, 4.5, 5.7, 10.12]

round_down = Proc.new { |n| n.to_i }

inte = float_numbers.collect(&round_down)

puts inte

#REMEBER TO PUT PROCS INSIDE PARENTEHSIS AND WITH '&' BEFORE LIKE THIS => ($proc_name)


hi = Proc.new { puts "Hello!"}

hi.call

# OR I CAN USE CALL. THERE IS IS ALWAYS ANOTHER WAY TO DO SOMETHING IN RUBY.



##### LAMBDA #####

#it looks like Procs

lambda { puts "hello "}

hi = lambda { puts "hello"}

hi.call 

multi_3 = lambda { |n| n * 3}


### LAMBDA VS PROCS ###

# thre is only two differences between them


# 1 
#  Lambda checks for the number of arguments passed to it, and it will throw an error if the number of arguments is wrong. Procs will set 'nil' to the missing ones instead.

#2
#  When lambda returns, it passes control back to the method, when a procs returns, it do so immediately, without going back to the calling method.

def batman_ironman_proc
    winner = Proc.new { return "Batman will win!"}
    winner.call
    "Ironman will win!" # there is a default return here, but it is never called, because Procs did the return
end

def batman_ironman_lambda
    winner = lambda { return "Batman will win!"}
    winner.call
    "Ironman will win!" #there is a default return here, and it is called because lambda gives back the action to the method.
end

puts batman_ironman_proc  #returns "Batman will win!" 
puts batman_ironman_lambda #return  "Ironman will win" --- remember that the last code inside a ruby method is always returned ---




## another lambda example

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda do |x|
  x.is_a? Symbol
  end

  symbols = my_array.select(&symbol_filter)

  puts symbols

  #checking if the array elements are symbols and putting it into another variable