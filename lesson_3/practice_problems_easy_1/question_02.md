**Describe the difference between ! and ? in Ruby and explain what would happen in the following scenarios:**

1. what is `!=` and where should you use it?
1. put `!` before something, like `!user_name`
1. put `!` after something, like `words.uniq!`
1. put `?` before something
1. put `?` after something
1. put `!!` before something, like `!!user_name`
***
Methods ending in `!` ypically but not always perform some permanent or potentially dangerous change.  
Methods ending in `?` typically return a boolean.  
1. `!=` means 'not equal'. You would use this in a conditional expression.
2. Placing `!` before something like a variable name inverts the result. For example, if `user_name` is `true` then `!user_name` is `false`. If `user_name` is `false` then `!user_name` is `true`.
3. In general, a method name ending with a `!` like `words.uniq!` indicates that the method will modify the object it is called upon.
4. `?` is a ternary operator used in an `if...else` statement.
5. Placing a `?` after something like a method indicates the method will return a boolean value of `true` or `false`.
6. Placing `!!` before something like `!!user_name` will convert the value of `user_name` to a boolean value `true` or `false`. 