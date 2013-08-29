#!/usr/bin/env ruby

array  = ["stars" , "mary" , "rats", "tars", "army" , "banana"]
	

def anagrams?(word, another_word)
	if word.chars.sort == another_word.chars.sort
	anagrams = true
	else
	anagrams = false
	end
end

def anagrams_of(list)
	matching_words = []
	list.each do |word| 
		anagrams = []
		list.each do |another_word| 
			if anagrams?(word, another_word)
				anagrams << another_word
			end
		end
		matching_words << anagrams
	end
	matching_words.uniq
end

puts anagrams_of(array).inspect
