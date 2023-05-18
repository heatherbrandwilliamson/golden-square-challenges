class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
    end
  
    def title
        @title
      # Returns the title as a string
    end
  
    def contents
        @contents
      # Returns the contents as a string
    end
  
    def count_words
        # Returns the number of words in the contents as an integer
        splits = contents.split(" ")
        words = splits.length.to_s
        return words
    end
  
    def reading_time(wpm) # wpm is an integer representing the number of words the
                          # user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
      split_list = contents.split(" ")     # convert the string to an array.
      words = split_list.length.to_f # convert to integrer
      return (words / wpm).ceil
    end

  def reading_chunk(wpm, minutes)
    words_read_1 = wpm * minutes
    array = contents.split(" ")
    array = array[0...words_read_1]
    return array
    words_read_2 = words_read_1...words_read_2
    
    
    # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end


diaryentry1 = DiaryEntry.new("Wednesday", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")

puts diaryentry1.count_words
puts diaryentry1.reading_time(200)
puts diaryentry1.reading_chunk(10, 1)


        
                                    # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
    