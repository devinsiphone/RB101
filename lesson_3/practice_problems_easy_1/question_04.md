**The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:**
```ruby
numbers = [1, 2, 3, 4, 5]
```
**What do the following method calls do (assume we reset numbers to the original array between method calls)?**
```ruby
numbers.delete_at(1)
numbers.delete(1)
```
***
`numbers.delete_at(1)` will remove the value at index `1` of the array `numbers`.  

`numbers.delete(1)` will remove the value `1` from the array `numbers`.