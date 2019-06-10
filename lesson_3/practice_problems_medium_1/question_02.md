**The result of the following statement will be an error:**
```ruby
puts "the value of 40 + 2 is " + (40 + 2)
```
**Why is this and what are two possible ways to fix this?**
***
In the above example `the value of 40 + 2 is` is a String type.  `(40 + 2)` is an Integer type.  The call to `puts` is attempting to concatenate these two types together throwing an error `no conversion of Integer into String` indicating joining an Integer and a String type is not allowed.

One method to fix this is using String Interpolation.
```ruby
puts "the value of 40 + 2 is #{(40 + 2)}"
```

Another method to fix this is to cast the Integer type `(40 + 2)` into a String type using the method #to_s.
```ruby
puts "the value of 40 + 2 is " + (40 + 2).to_s
```