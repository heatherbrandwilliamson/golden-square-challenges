def encode(plaintext, key)
    alphabet = *('a'..'z')
    cipher = key.chars.uniq + (alphabet.to_a - key.chars)  # remove the character of the secret key 
    ciphertext_chars = plaintext.chars.map do |char| #
      (65 + cipher.find_index(char)).chr  # error in this line? the cast is not the same.
    end
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars) # variable = remove duplicates 
    puts cipher
    plaintext_chars = ciphertext.chars.map do |char|
        p char
        cipher[65 - char.ord]
        exit
    end
    return plaintext_chars.join
  end

  

# puts 14.class
# puts "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL" == "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
# puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")

puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")



# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"