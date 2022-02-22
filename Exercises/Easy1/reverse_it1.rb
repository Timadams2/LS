def reverse_words(string)
    words = []
    
    string.split.each do |word|
        string.reverse! if word.size >= 5
        words << word
    end 
    
    words.join(' ')
end
    
    