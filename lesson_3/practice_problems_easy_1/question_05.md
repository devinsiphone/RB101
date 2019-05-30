**Programmatically determine if 42 lies between 10 and 100.**  

*hint: Use Ruby's range object in your solution.*
***
```ruby
if 42 > 10 && 42 < 100
  puts "42 lies between 10 and 100"
end
```
After solving this solution with the above if statement I found a Ruby method that accomplishes the solution in one line of code.
```ruby
(10..100).cover?(42)
```
