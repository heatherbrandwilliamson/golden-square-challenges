require 'reading_text'

# estimate of reading time for a text, assuming that I can read 200 words a minute.

RSpec.describe "estimate reading time for a text" do
    it "estimate reading time for a text" do 
    length_text = 600  # choose variable 
    result = reading_time(length_text) # method here
    expect(result).to eq 3 # equates to 5 mins.
    end 
end 

# logic notes for code file. 
# length of text = 600 words 
# words per a minute = 200 
# result = length of text / words per a minutre 
# result = 600 / 200 
# result = 3 mins 



