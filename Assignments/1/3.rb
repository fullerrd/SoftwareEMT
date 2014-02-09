def count_words(string)

	string.downcase!
	string = string.gsub(/[^0-9a-z ]/i, '')
	words = string.split(' ')
    counts = Hash.new(0)
	words.each { |words| counts[words] +=1 }
	puts counts
end

count_words("A man, a plan, a canal -- Panama")
