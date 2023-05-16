require 'improve_grammar' # file name

RSpec.describe "grammar is correct in text" do
   it "has capital letter and correct punctuation" do
   string = "Hello world." 
   result = check_grammar(string)
      expect(result).to eq "Capital letter is correct & end of sentence is correct"
  end
  it "has capital letter and no punctuation" do
    string = "Hello world" 
    result = check_grammar(string)
       expect(result).to eq "Capital letter is correct & end of sentence is not correct"
   end
  it "has capital letter & no punctuation" do
    string = "Hello world" 
    result = check_grammar(string)
       expect(result).to eq "Capital letter is correct & end of sentence is not correct"
   end
  it "has no capital letter & no punctuation" do
    string = "hello world" 
    result = check_grammar(string)
       expect(result).to eq "Capital letter is not correct & end of sentence is not correct"
  end
end