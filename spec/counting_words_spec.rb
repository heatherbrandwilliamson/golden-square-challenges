# Design

# A method called count_words 
# that takes a string as an argument and returns the number of words in that string.

require 'counting_words' # We have to require the file with our code in first.

RSpec.describe "personal diary return the first 5 words of the string " do  
  it "return number of words in the string" do
    # We run the method with an example argument sentance
    string = "Heather is my name and I have a cat called louis"
    result = Count_words(string)
      expect(result).to eq 11
  end
end


# A method called make_snippet that takes a string as an argument and 
# returns the first five words and then a '...' if there are more than that.