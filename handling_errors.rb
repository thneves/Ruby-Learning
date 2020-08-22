
lucky_nums = [1,2,3,4,5,6,7]


begin
   lucky_nums['hi']
    puts 10 / 0
rescue TypeError
    puts 'this is a type error'
rescue ZeroDivisionError
    puts 'u can\'t divide by zero'
end


begin
    lucky_nums['hi']
      puts 10 / 0
  rescue TypeError => e      #IN THIS WAY YOU SET A VARIABLE THAT AUTO DEFINE THE ERROR AND I CAN PRINT IT.
      puts e
  rescue ZeroDivisionError => f
     puts f
  end


  