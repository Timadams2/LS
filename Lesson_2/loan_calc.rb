# need 3 pices info 
# loan amount 
# annual percentage
# loan duration 

# from above youll need 
# monthly interest rate 
# loan duration in months
# monthly payment

def prompt(message)
  puts ("=> #{message}")
end 

loop do
  prompt("Welcome to the Loan Calculator")
  
  prompt("What is the loan amount")
  
  amount = ''
  loop do 
    amount = gets.chomp
    
    if amount.empty? || amount.to_f < 0
      prompt("Must enter posotive number.")
    else
      break
    end 
  end 
  
  prompt("What is the annual percentage rate on the loan?")
  
  interest_rate = '' 
  loop do 
    interest_rate = gets.chomp
    
    if interest_rate.empty? || interest_rate.to_f < 0
      prompt("Must be a positive number")
    else 
      break
    end
  end 
  
  prompt("How many years is the loans duration?")
  
  years = ''
  loop do 
    years = gets.chomp
    
    if years.empty? || years.to_i < 0 
      prompt("Enter a valid number!!!!!!")
    else 
      break
    end
  end 
  
  annual_interest_rate = interest_rate.to_f() / 100 
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i() * 12
  
  monthly_payment = amount.to_f() * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-months)))
  
  prompt("You monthly payment is $#{format('%.2f', monthly_payment)}")
  
  prompt("Another calculation?")
  answer = gets.chomp
  
  break unless answer.downcase.start_with?('')
end 

prompt("Thanks for using the loan calculator, pal.")
  
