famous_words = "seven years ago..."
prepend_words = "Four score and "

different_way_1 = prepend_words + famous_words
puts different_way_1

different_way_2 = prepend_words << famous_words
puts different_way_2

different_way_3 = famous_words.prepend("Four score and ")
puts different_way_3