
def Reading_text(text)
    split_list = text.split(" ")     # convert the string to an array.
    words = split_list.length.to_i # convert to integrer
    calc = words / 200.0 # divide by number of words
    return calc.ceil
end 
