**In this hash of people and their age,**
```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
```
**see if "Spot" is present.**  

**Bonus: What are two other hash methods that would work just as well for this solution?**
***
```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.key?("Spot")
p ages.member?("Spot")
p ages.has_key?("Spot")
p ages.include?("Spot")
```