def digits_list(numbers)
    digits = []
    loop do
        number, remainder = number.divmod(10)
        digits.unshift(remainder)
        break if number == 0
    end 
    digits
end
