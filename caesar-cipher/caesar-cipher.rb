def caesar_cipher(string, shift_factor)
  string
  .chars
  .map do |letter|
    ascii_code = letter.ord
    if ascii_code.between?(65, 90)
      base = 65
    elsif ascii_code.between?(97, 122) 
      base = 97
    else
      next letter
    end

    encrypted_ascii = base + (ascii_code - base + shift_factor) % 26
    encrypted_ascii.chr
  end
  .join("")
end

p caesar_cipher("What a string!", 5)