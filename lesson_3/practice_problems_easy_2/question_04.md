**See if the name "Dino" appears in the string below:**
```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
```
***
```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
query = 'Dino'

if advice.include?(query)
  p "Searching for #{query}... results found!"
else
  p "Searching for #{query}... no results found."
end

if advice.match?(query)
  p "Searching for #{query}... results found!"
else
  p "Searching for #{query}... no results found."
end
```