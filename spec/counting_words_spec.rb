require 'counting_words' # We have to require the file with our code in first.

RSpec.describe "count the words in a string" do  
  it "count the words in a string" do
    # We run the method with an example argument sentance
    test_string = "Heather is my name and I have a cat called louis"
    result = Count_words(test_string)
      expect(result).to eq "11"
  end
end


# A method called make_snippet that takes a string as an argument and 
# returns the first five words and then a '...' if there are more than that.