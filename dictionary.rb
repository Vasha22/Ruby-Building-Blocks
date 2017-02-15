
def substring (text, dictionary)
	output = Hash.new(0)

	text.downcase.split(" ").each do |x|
		dictionary.each {|word| output[word] += 1 if x.include?(word) }
	end
	puts output
end

puts "Please write a word you would like to enter into your dictionary. You can stop adding words by pressing 
enter with an empty line."

dictionary = []

until (word = gets.downcase.chomp).empty?
	dictionary << word
	puts "Current list is:  #{dictionary.join(", ")}."
end

puts "Your dictionary list in alphabetical order is: #{dictionary.sort.join(", ")}."

puts "Please insert a text you would like to search for in a dictionary."
input = gets.chomp

substring(input, dictionary)
