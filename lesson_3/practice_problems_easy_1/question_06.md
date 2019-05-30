**Starting with the string:**
```ruby
famous_words = "seven years ago..."
```
**show two different ways to put the expected "Four score and " in front of it.**
***
```ruby
famous_words = "seven years ago..."
prepend_words = "Four score and "

different_way_1 = prepend_words + famous_words
puts different_way_1

different_way_2 = prepend_words << famous_words
puts different_way_2
```