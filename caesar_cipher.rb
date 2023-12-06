def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  cipher = ''
  string.each_char do |char|
    if alphabet.include?(char.downcase)
        if(char == char.upcase)
            cipher += alphabet[(alphabet.index(char.downcase) + shift) % 26].upcase
        else
            cipher += alphabet[(alphabet.index(char.downcase) + shift) % 26]
        end
    else
      cipher += char
    end
  end
  cipher
end

puts caesar_cipher('What a string!', 5)