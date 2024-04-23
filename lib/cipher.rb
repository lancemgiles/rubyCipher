# frozen_string_literal: true

# shift a given string input by a given number of characters
class CaesarCipher
  def cipher(string, num)
    ascii = []
    string.chars.each do |c|
      if (c.ord < 65) || (c.ord > 90 && c.ord < 97) || (c.ord > 122)
        ascii.push(c)
      else
        ascii.push(c.ord)
      end
    end

    shift_c = ascii.map do |n|
      if n.is_a?(Integer)
        if ((n + num) > 122) || ((n + num) > 90 && (n + num) < 97)
          n + num - 26
        else
          n + num
        end
      else
        n
      end
    end

    num_to_char = shift_c.map do |c|
      if c.is_a?(Integer)
        c.chr
      else
        c
      end
    end
    num_to_char.join
  end
end
