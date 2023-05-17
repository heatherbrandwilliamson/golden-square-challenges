def get_most_common_letter(text)
    counter = Hash.new(0)
    text.gsub(/\s+/, "").chars.each do |char|
      counter[char] += 1
    end
    counter = counter.sort_by { |_, value| value }
    puts counter
    return counter[-1][0]
end
  
puts get_most_common_letter("the roof, the roof, the roof is on fire!")

  # Intended output:
  # 
  # > get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"