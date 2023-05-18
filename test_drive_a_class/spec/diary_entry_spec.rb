require 'diary_entry'

RSpec.describe @DiaryEntry do
    it "constructs" do
    diary_entry1 =DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry1.title).to eq "my_title"
    expect(diary_entry1.contents).to eq "my_contents"
    end

    it "@count_words" do
        diary_entry1 =DiaryEntry.new("my_title", "some words to go here")
        expect(diary_entry1.count_words).to eq 5
    end

    it "return zero when contents is empty" do
        diary_entry1 =DiaryEntry.new("my_title", "")
        expect(diary_entry1.count_words).to eq 0
    end

    describe "@reading_time" do
      context "give wpm of some sensible number(200)" do
        it "returns ceiling of number" do
            diary_entry1 = DiaryEntry.new("my_title", "one" * 550)
            expect(diary_entry1.reading_time(200)).to eq 3
        end
      end

      context "given a wpm of 0" do
        it "fails" do
            diary_entry1 = DiaryEntry.new("my_title", "one two three")
            expect { diary_entry.reading_time(0)}.to raise_error "Reading speed must be above zero"
        end
      end
    describe "@reading chunk" do 
      context "it returns the a chunk of words from a wpm" do 
        it "returns all the words" do 
            diary_entry1 = DiaryEntry.new("my_title", "here are some words")
            expect(diary_entry.reading_chunk(200, 2)).to eq "here are some words"
        end
    end



end 


