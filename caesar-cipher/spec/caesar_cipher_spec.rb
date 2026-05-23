require_relative "../lib/caesar_cipher"

describe CaesarCipher do
  let(:encryptor) { Class.new { extend CaesarCipher } }
  describe "#encrypt" do
    let(:original_text) { "Hello, world!" }

    context "when shift factor is small" do
      it "returns encrypted text" do
        shift_factor = 7
        encrypted_text = "Olssv, dvysk!"
        expect(encryptor.encrypt(original_text, shift_factor)).to eq(encrypted_text)
      end
    end

    context "when shift factor is large" do
      it "returns encrypted text" do
        shift_factor = 42
        encrypted_text = "Xubbe, mehbt!"
        expect(encryptor.encrypt(original_text, shift_factor)).to eq(encrypted_text)
      end
    end
  end
  describe "#shift_letter" do
    context "when input is a capital letter" do
      it "returns a capital letter" do
        original_letter = "C"
        shift_factor = 5
        encrypted_letter = "H"
        expect(encryptor.shift_letter(original_letter, shift_factor)).to eq(encrypted_letter)
      end
    end
    context "when input is a lowercase letter" do
      it "returns a lowercase letter" do
        original_letter = "x"
        shift_factor = 8
        encrypted_letter = "f"
        expect(encryptor.shift_letter(original_letter, shift_factor)).to eq(encrypted_letter)
      end
    end
    context "when input is a symbol" do
      it "returns the same symbol" do
        symbol = "?"
        shift_factor = 32
        expect(encryptor.shift_letter(symbol, shift_factor)).to eq(symbol)
      end
    end
  end
end
