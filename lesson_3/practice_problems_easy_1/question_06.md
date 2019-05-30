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
After solving this problem with the above solution I found a baked in Ruby method that also accomplishes this.
```ruby
different_way_3 = famous_words.prepend("Four score and ")
puts different_way_3
```