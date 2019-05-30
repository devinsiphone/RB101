**Fun with gsub:**
```ruby
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
```
**This gives us a string that looks like a "recursive" method call**
```ruby
"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
```
**If we take advantage of Ruby's Kernel#eval method to have it execute this string as if it were a "recursive" method call**
```ruby
eval(how_deep)
```
**what will be the result?**
***
`=> 42`
We come to this answer because the variable `how_deep` now equals the recursive statement `add_eight(add_eight(add_eight(add_eight(add_eight(number)))))`.

add_eight(number) => 10
add_eight(add_eight(number)) => 18
add_eight(add_eight(add_eight(number))) => 26
add_eight(add_eight(add_eight(add_eight(number)))) => 34
add_eight(add_eight(add_eight(add_eight(add_eight(number))))) => 42