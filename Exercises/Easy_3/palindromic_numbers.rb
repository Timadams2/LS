def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(integer)
  palindrome?(integer.to_s)
end