**Shorten this sentence:**
```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
```
**...remove everything starting from "house".**  

**Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".**  

**As a bonus, what happens if you use the String#slice method instead?**
***
```ruby
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice('Few things in life are as important as ')
p advice

p advice.slice!('Few things in life are as important as ')
p advice
```
If we use the `#slice` method the `advice` string is not altered.  
If we use the `#slice!` method the `advice` string is altered.