def check_grammar(string)
    # Capital Letter at start
    letter = string[0]
    punctuation = string[-1]
    if letter.upcase == letter
        check_capital = "Capital letter is correct"
    else 
        check_capital = "Capital letter is not correct"
    end
    if punctuation == "." || punctuation == "!" || punctuation == "?"
        check_punctuation = " & end of sentence is correct"
    else 
        check_punctuation = " & end of sentence is not correct"
    end
    return check_capital + check_punctuation
end 

puts check_grammar("Hello world!")