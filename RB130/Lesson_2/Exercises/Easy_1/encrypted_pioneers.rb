def decipher(name)
  correct_capital = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  correct_lowercase = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  encrypted_capital = %w(N O P Q R S T U V W X Y Z A B C D E F G H I J K L M)
  encrypted_lowercase = %w(n o p q r s t u v w x y z a b c d e f g h i j k l m)
  result = []
  
  name.chars.each do |letter|
    if correct_lowercase.include?(letter.downcase) == false
      result << letter
    elsif letter == letter.upcase
      idx = encrypted_capital.find_index(letter)
      result << correct_capital[idx]
    elsif letter == letter.downcase
      idx = encrypted_lowercase.find_index(letter)
      result << correct_lowercase[idx]
    end
  end
  
  result.join
end

puts decipher('Nqn Ybirynpr')
puts decipher('Tenpr Ubccre')
puts decipher('Nqryr Tbyqfgvar')
puts decipher('Nyna Ghevat')
puts decipher('Puneyrf Onoontr')
puts decipher('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')
puts decipher('Wbua Ngnanfbss')
puts decipher('Ybvf Unvog')
puts decipher('Pynhqr Funaaba')
puts decipher('Fgrir Wbof')
puts decipher('Ovyy Tngrf')
puts decipher('Gvz Orearef-Yrr')
puts decipher('Fgrir Jbmavnx')
puts decipher('Xbaenq Mhfr')
puts decipher('Fve Nagbal Ubner')
puts decipher('Zneiva Zvafxl')
puts decipher('Lhxvuveb Zngfhzbgb')
puts decipher('Unllvz Fybavzfxv')
puts decipher('Tregehqr Oynapu')