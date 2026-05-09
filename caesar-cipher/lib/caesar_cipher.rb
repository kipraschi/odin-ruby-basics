# Caesar cipher takes in a string and the shift factor and then outputs the modified string using a right shift

module CaesarCipher
  # module_function

  ALPHABET_SIZE = 26
  def encrypt(string, shift_factor)
    string.chars.map { |letter| shift_letter(letter, shift_factor) }.join
  end

  def shift_letter(letter, shift_factor)
    case letter.ord
    when ("A".ord)..("Z".ord) then shift(letter, "A".ord, shift_factor)
    when ("a".ord)..("z".ord) then shift(letter, "a".ord, shift_factor)
    else letter
    end
  end

  def shift(letter, base, shift_factor)
    (base + ((letter.ord - base + shift_factor) % ALPHABET_SIZE)).chr
  end
end
