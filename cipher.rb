require 'pry-byebug'

def caesar_cipher(string, num)
	getChars = string.chars
	inclusions = getChars.reject{ |c| (c.ord < 65) || (c.ord > 122)}
	getAscii = inclusions.map { |c| c.ord}
	ascii = []
	modify = getChars.each{
		|c|
		if (c.ord < 65) || (c.ord > 122)
			ascii.push(c)
		else
			ascii.push(c.ord)
		end
	}
	p ascii
	# shift = modify.map { |n| (n + num).chr}
	# shift.join
	# loop through asciiShift to find if any ascii values have moved above or below
	# letter ranges
	# items outside of that range should remain in the array,
	# but not be modified
	# join characters back into a string
end


input = "{zab!"
puts caesar_cipher(input, 1)

# input2 = "{ZAB!"
# puts caesar_cipher(input2, 1)