# method that takes a string as ana argument 
# return a new string that contains the original value 
# using a staggered capitalization 
# non letter characters count when determining every other
  # but dont change

# algorithm 
  # startin with a count of 0
  # if the current character is a letter
    # if the counter is an even then upcase
    # if the counter is odd then downcase
    # then add one to the counter
  # if its not, don't add the counter

def staggered_case(string)
  characters = string.chars
  counter = 0
  characters.map do |char|
    if ('a'..'z').include?(char.downcase)
      if counter.even?
        char.upcase!
      else
        char.downcase!
      end
      counter += 1
    end
  end
  p characters.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'