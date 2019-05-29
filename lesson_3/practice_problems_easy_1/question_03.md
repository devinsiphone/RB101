**Replace the word "important" with "urgent" in this string:**
```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
```
***
```ruby
advice = "Few things in life are as important as house training your pet dinosaur."

advice = advice.split(" ")

advice.each_with_index { |value, index|
  if value == "important"
    advice[index] = "urgent"
  end
}

puts advice = advice.join(" ")
```

After solving this problem using iteration I found a String method that solves this in one line of code.
```ruby
puts advice.gsub!('important', 'urgent')
```