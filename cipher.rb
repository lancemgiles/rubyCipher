def caesar_cipher(string, num)
	get_chars = string.chars

	ascii = []

	modify = get_chars.each{
		|c|
		if (c.ord < 65) ||
			 (c.ord > 90 && c.ord < 97 ) ||
			 (c.ord > 122)
			ascii.push(c)
		else
			ascii.push(c.ord)
		end
	}
	
	shift = ascii.map { |n| 
		if (n.is_a? Integer)
			if ((n + num) > 122) || ((n + num) > 90 && (n + num) < 97)
				n = n + num - 26
			else
				n + num
			end
		else
			n
		end
	}

	nums_to_string = shift.map{ |c|
		if (c.is_a? Integer)
			c.chr
		else
			c
		end}.join

end