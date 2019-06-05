**Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?**
```ruby
title = "Flintstone Family Members"
```
***
```ruby
title = "Flintstone Family Members"
sample_table = "40 spaces wide table40 spaces wide table"

puts title.center(sample_table.length)
puts sample_table
```