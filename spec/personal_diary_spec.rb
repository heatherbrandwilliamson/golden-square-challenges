require 'personal_diary' # We have to require the file with our code in first.

RSpec.describe "personal diary return the first 5 words of the string " do  
  it "return first 5 words of the string" do
    # We run the method with an example argument sentance
    string = "Heather is my name and I have a cat called louis"
    result = make_snippet(string)
      expect(result).to eq "Heather is my name and"
  end
end


# A method called make_snippet that takes a string as an argument and 
# returns the first five words and then a '...' if there are more than that.