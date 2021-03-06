**Alan wrote the following method, which was intended to show all of the factors of the input number:**
```ruby
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end
```
**Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.**  

**Bonus 1**  

**What is the purpose of the number % divisor == 0 ?**

**Bonus 2**

**What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?**
***
```ruby
def factors(number)
  divisor = number
  factors = []
  while divisor != 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

# Test Cases
puts factors(0)
puts factors(1000)
```
The purpose of the `number % divisor == 0` statement is to ensure `divisor` goes into `number` evenly which means `divisor` is a factor of `number`.

The purpose of the second to last line `factors` is to ensure that the `factors` array is returned from the `factors(number)` method.