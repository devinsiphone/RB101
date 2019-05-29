advice = "Few things in life are as important as house training your pet dinosaur."

# advice = advice.split(" ")

# advice.each_with_index { |value, index|
#   if value == "important"
#     advice[index] = "urgent"
#   end
# }

# puts advice = advice.join(" ")

puts advice.gsub!('important', 'urgent')