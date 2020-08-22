class Account
    attr_reader :name, :balance
    def initialize(name, balance)
        @name = name
        @balance = balance
    end

def pin
    @pin = 1234
end

def pin_error
    puts "Invalid PIN number"
end

public

def show_balance(pin_number)

    if pin_number == @pin
        puts "Balance: $#{balance}"
    else
        puts pin_error
    end
end


def withdraw(pin_number, amount)

    if pin_number = @pin
        puts "Withdrew #{amount} \n New balance: #{balance - amount}."
    else
        puts pin_error
    end

end
end

checking_account = Account.new('thales',999999)

checking_account.show_balance(1234)




