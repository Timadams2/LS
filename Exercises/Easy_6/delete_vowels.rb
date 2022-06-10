# method that takes array of strings 
# returns array of the same thing without vowels

VOWELS = ('aeiouAEOIU')

def remove_vowels(strings)
  strings.map { |string| string.delete(VOWELS) }
end 

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']