def alphabetize(arr, rev = false)

    arr.sort!
    
    if rev == true
    arr.reverse!
    end
    
    return arr
    
    end
    
    numbers = [10, 7, 19, 23, 2, 4]
    
    puts alphabetize(numbers, true)


    #method that sort an array in ascending or descending order


    def alphabetize(array, reverse = false)
        array.sort!

        if reverse == true
            array.reverse!
        end

        return Array
    end

    numbers = [10, 7, 19, 23, 2, 4]

    
    alphabetize(numbers)  # ASCENDING ORDER  A - Z
    alphabetize(numbers, true) # DESCENDING ORDER Z - A
    
