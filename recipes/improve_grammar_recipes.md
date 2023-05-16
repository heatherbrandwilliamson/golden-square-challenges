## Improve Grammar Method Design Recipe

# 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# 2. Design the Method Signature

'improve_grammar' will run true if text starts with capital letter, and ends with suitable punctuation mark. (., !, ?)

improve_grammar(text)
text: a string (e.g "With stimulus spending, the federal government coversabout $30 billion, more than the 50 percent share it has historicallycovered in New York.")
improve_grammar: True - "Your grammar is correct."

# The method doesn't print anything or have any other side-effects

# 3. Create Examples as Tests

improve_grammar("With stimulus spending, the federal government coversabout $30 billion, more than the 50 percent share it has historicallycovered in New York.") => "Your grammar is correct."
improve_grammar("with stimulus spending, the federal government coversabout $30 billion, more than the 50 percent share it has historicallycovered in New York") => "Please retry, your sentance should start with a capital & your sentance ending isn't suitable!"
improve_grammar("With stimulus spending, the federal government coversabout $30 billion, more than the 50 percent share it has historicallycovered in New York") => "Please retry, your sentance ending isn't suitable."
improve_grammar("With stimulus spending, the federal government coversabout $30 billion, more than the 50 percent share it has historicallycovered in New York?") => "Your grammar is correct."
improve_grammar("") => "You have not enterred any text"

# 4. Implement behaviour 


