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
