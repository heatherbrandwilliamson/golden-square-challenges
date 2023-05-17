def get_most_common_letter(text)
    counter = Hash.new(0)
    text.gsub(/\s+/, "").chars.each do |char|  # strip white space from text here 
      counter[char] += 1
    end
    counter = counter.sort_by { |k, v| -v }
    return counter [0][0]
end



#counter = counter.sort_by { |_, v| v }
#counter.to_a.sort_by { |k, v| -v }[0][0]
  
puts get_most_common_letter("the roof, the roof, the roof is on fire!")

  # Intended output:
  # 
  # > get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"