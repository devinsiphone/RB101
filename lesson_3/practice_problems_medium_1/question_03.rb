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