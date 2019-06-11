**Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.**

**She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?**
```ruby
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
```
***
```ruby
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Test Cases
MAX_BUFFER_SIZE = 5000

time = Time.now
buffer = []
element = 0
while element <= 10000 do
  rolling_buffer1(buffer, MAX_BUFFER_SIZE, element)
  element += 1
end
puts "Time for rolling_buffer1 method: #{(Time.now - time).to_s}"

time = Time.now
buffer = []
element = 0
while element <= 10000 do
  rolling_buffer2(buffer, MAX_BUFFER_SIZE, element)
  element += 1
end
puts "Time for rolling_buffer2 method: #{(Time.now - time).to_s}"
```
```
Time for rolling_buffer1 method: 0.000729
Time for rolling_buffer2 method: 0.002073
```
A test case for each method is written above along with the results of the test cases as well.  The `rolling_buffer1` method works faster than the `rolling_buffer2` method.  Also, the `buffer` argument in the `rolling_buffer1` method will be modified on it's return out of the method.  This will not be the case for the `rolling_buffer2` method.