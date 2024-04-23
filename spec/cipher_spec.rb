# frozen_string_literal: true

require './lib/cipher'

describe CaesarCipher do
  describe '#cipher' do
    it 'returns a message shifted by a given factor' do
      cipher = CaesarCipher.new
      expect(cipher.cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end
  end
end
