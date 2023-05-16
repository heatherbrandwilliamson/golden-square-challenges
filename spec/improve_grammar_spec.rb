require 'improve_grammar'

RSpec.describe "test that grammar is correct in text" do
  it "Sentence starts with capital and ends with suitable punctuation" do
    string = "Hello world!" 
    result = check_grammar(string)
      expect(result).eq to "Capital letter is correct"
  end
end