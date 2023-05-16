def check_grammar(text)
    # Capital Letter at start
    letter = text[0]
    # punctuation = text[-1]
    if letter.upcase == letter
        "Capital letter is correct"
    end
end 