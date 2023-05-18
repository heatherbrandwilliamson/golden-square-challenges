class GrammarStats
    def initialize 
      @check_passed = []
      @check_failed = []
    end

  
    def check(text)
      fail "cannot process empty string" if text.empty?
      # fail test to be written here.
      
      # declare variables
      letter = text[0]
      punctuation = text[-1] 

      if (punctuation == "." || punctuation == "!" || punctuation == "?") && (letter.upcase == letter)
        check_text = true
        @check_passed << text
      else 
        check_text = false
        @check_failed << text
      end
      return check_text
    end
  
    def percentage_good

      #variables
      @check_passed = @check_passed.length
      @check_failed = @check_failed.length
      total = @check_failed + @check_passed

      if @check_passed == 0
        return 0.0
      else 
        percentage = @check_passed.to_f / total.to_f * 100
      end 
      return percentage
    end
end 

grammarstats1 =GrammarStats.new
puts grammarstats1.check("My text to go here!")
puts grammarstats1.check("My text to go here")
puts grammarstats1.check("my text to go here")
puts grammarstats1.percentage_good



