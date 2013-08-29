#!/usr/bin/env ruby

# write a solution without using each() or declaring arrays.
# instead use map() and select()
# select () Returns an array containing all elements of enum for which the given block returns a true value.
# If no block is given, an Enumerator is returned instead.
# map() Returns a new array with the results of running block once for every element in enum.
# If no block is given, an enumerator is returned instead.



# def anagrams_of(list)
# 	matching_words = []
# 	list.each do |word|
# 		anagram = []
# 		list.each do |another_word|
# 			if word.chars.sort == another_word.chars.sort
# 				anagram << another_word
# 			end
# 		end
# 		matching_words << anagram
# 	end
# 	matching_words.uniq
# end

# puts anagrams_of(array).inspect



input = ["stars" , "mary" , "rats", "tars", "army" , "banana", "banana"]

# I want to map the select

result = input.map do |word|
	input.select do |another_word|
		word.chars.sort == another_word.chars.sort
	end
end
puts result.uniq.inspect



# word = v
# another_word = v
# w_processed = word.chars.sort
# ano_processed = another_word.chars.sort
# (array).find_all { |v|  v w_processed == ano_processed } #this should replace the if
# #(1..4).collect { |i| i*i } # 1x1 2x2 3x3 4x4
# #(1..4).collect { "cat"  }  # cat cat cat cat


# end

# puts anagrams_of(array).inspect