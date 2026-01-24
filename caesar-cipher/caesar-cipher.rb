def caesar_cipher(string, shift_factor)
  string
  .chars
  .map do |letter| 
    case letter.ord
    when 'A'.ord..'Z'.ord
      base = 'A'.ord
    when 'a'.ord..'z'.ord
      base = 'a'.ord
    else
      next letter
    end

    encrypted_ascii = base + (letter.ord - base + shift_factor) % 26
    encrypted_ascii.chr
  end
  .join("")
end