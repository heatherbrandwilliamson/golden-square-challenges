def check_to_do(string)
    string_upcase = string.upcase
    if string.include?"#TODO"
        answer = "Here is your TODO:" + string
    elsif string_upcase.include?"#TODO"
        answer = "Here is your TODO:" + string
    else 
        answer = "You have no TODO's"
    end
    return answer
end

puts check_to_do("#TODO Water the plants on thursday")