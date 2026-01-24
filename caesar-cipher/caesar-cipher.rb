def caesar_cipher(string, shift_factor)
  def encrypt(letter, shift_factor)
    ascii_code = letter.ord
    shifted_ascii = ascii_code + shift_factor

    shifted_ascii -= 26 if # wrap from z to a
    ((ascii_code >= 65 && ascii_code <= 90) && shifted_ascii > 90 ) || # uppercase 65-90
    ((ascii_code >= 97 && ascii_code <= 122) && shifted_ascii > 122 ) # lowercase 97-122

    shifted_ascii.chr
  end

  string
  .split("")
  .map { |char| char.match?(/[[:alpha:]]/) ? encrypt(char, shift_factor) : char}
  .join("")

end