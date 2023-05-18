require 'grammar_stats'

RSpec.describe @GrammarStats do

    describe "@check" do
    context "when text is given" do
      it "returns true if the text begins with a capital letter and ends with correct punctuation" do
        grammarStats1 =GrammarStats.new 
        result = grammarStats1.check("My text to go here.")
          expect(result).to eq true
        end
      end
    
    context "given an empty string" do 
    it "returns false if the text does not begins with a capital letter" do
        grammarStats1 =GrammarStats.new 
        result = grammarStats1.check("my text to go here.")
        expect(result).to eq false
      end
    end

    context "given an empty string" do 
        it "returns false if the text does not begins with or end  capital letter" do
            grammarStats1 =GrammarStats.new 
            result = grammarStats1.check("my text to go here.")
            expect(result).to eq false
          end
        end
    
    context "given an empty string" do  
        it "fails" do 
          grammarStats1 =GrammarStats.new 
          result = grammarStats1.check(" ")
          expect { result }.to raise_error "You need to enter text"
        end
    end 






end 



      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.

            # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.