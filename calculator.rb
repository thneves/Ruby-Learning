

def calculator
    
    puts "Enter the first operand: "
    num1 = gets.chomp.to_f
    
    puts "Enter the operator sign: "
    operator = gets.chomp
    
    puts "Enter theh second operand: "
    num2 = gets.chomp.to_f

    result = 0

    if operator == '*'
        result = num1 * num2
    elsif operator == '/'
        result = num1 / num2
    elsif operator == '+'
        result = num1 + num2
    elsif operator == '-'
        result = num1 - num2
    else
        result = 'Put a valid operator'

    return result
    end
end


puts calculator
