#!/usr/bin/env ruby

array  = ["stars" , "mary" , "rats", "tars", "army" , "banana"]
	

def anagrams_of(list)
	matching_words = []
	list.each do |word|
		anagram = []
		list.each do |another_word|
			if word.chars.sort == another_word.chars.sort
				anagrams << another_word
			end
		end
		matching_words << anagram
	end
	matching_words.uniq
end

puts anagrams_of(array).inspect
