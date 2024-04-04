def caesar_cipher(string, num)
	asciiShift = string.chars.map { |c| c.ord }.map { |n| (n + num).chr}
	# loop through asciiShift to find if any ascii values have moved above or below
	# letter ranges and adjust them accordingly
	# join characters back into a string
end


input = "zab"
puts caesar_cipher(input, 1)

input2 = "ZAB"
puts caesar_cipher(input2, 1)