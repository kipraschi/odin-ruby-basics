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
end
