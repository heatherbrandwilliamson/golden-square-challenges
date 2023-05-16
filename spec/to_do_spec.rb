require 'to_do'

RSpec.describe "Check if a to do list contains #TODO" do 
    it "includes #TODO and returns task" do
        string = "#TODO Water the plants on thursday"
        result = check_to_do(string)
          expect(result).to eq "Here is your TODO:#TODO Water the plants on thursday"
    end
    it "includes does not include #TODO" do
        string = "It was sunny today and I went for a walk"
        result = check_to_do(string)
          expect(result).to eq "You have no TODO's" 
    end
    it "includes lower case #todo" do
        string = "#todo Buy milk from the shop"
        result = check_to_do(string)
          expect(result).to eq "Here is your TODO:#todo Buy milk from the shop"
    end
    it "empty string" do
        string = ""
        result = check_to_do(string)
          expect(result).to eq "You have no TODO's" 
    end
end 

