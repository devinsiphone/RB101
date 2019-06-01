**Given the hash below**
```ruby
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
```
**Turn this into an array containing only two elements: Barney's name and Barney's number**
***
```ruby
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

array_flintstones = Array[*flintstones]
array_flintstones = array_flintstones[2]
p array_flintstones
```
After working through the solution using the above code I found a built-in Ruby method that will accomplish this in one line of code.
```ruby
p flintstones.assoc("Barney")
```