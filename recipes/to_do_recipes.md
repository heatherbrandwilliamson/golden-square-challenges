## Check_To_do Method Design Recipe

# 1. Describe the Problem

As a user I would like to keep track of my tasks.
I want to check if a text includes the string #TODO


# 2. Design the Method Signature


'check_to_do' will run true if the text contains #TODO 
string: a string (e.g "#TODO Water the plants on thursday")
check_to_do: true - "#TODO Water the plants on thursday"

# 3. Create Examples as Tests

1. 
check_to_do("#TODO Water the plants on thursday") => "Here is your TODO: #TODO Water the plants on thursday" 

2. 
check_to_do("It was sunny today and I went for a walk") => "You have no TODO's" 

3. 
check_to_do("#todo Buy milk from the shop") => "Here is your TODO: #todo Buy milk from the shop"

4. 
check_to_do("") => "You have no TODO's"

# 4. Implement behaviour 