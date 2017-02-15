def caesar_cipher (string, shift)

	letters = string.split("")
	letters = letters.map do |letter|
		letter = letter.ord + shift

		if letter.between?(65,90) || letter.between?(97,122)
			letter
		elsif letter > 90
			letter = (letter-90) + 64
		elsif letter > 122
			letter = (letter-122) + 97
		else
			letter -= shift
		end
		letter.chr
	end
	letters.join
end

puts "Enter some text you would like to encrypt."
input_text= gets.chomp
puts "Enter a number that you would like to use in your encryption for shifting the letters."
input_shift = gets.chomp.to_i
puts "Here is your encrypted code: "
puts caesar_cipher(input_text, input_shift)




