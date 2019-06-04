advice = "Few things in life are as important as house training your pet dinosaur."

# slice(start, length) → new_str or nil
p advice.slice(0, 39)
p advice

# slice(range) → new_str or nil
p advice.slice(0..38)
p advice

# slice(match_str) → new_str or nil
p advice.slice('Few things in life are as important as ')
p advice


# slice!(start, length) → new_str or nil
p advice.slice!(0, 39)
p advice

# reset variable advice 
advice = "Few things in life are as important as house training your pet dinosaur."

# slice!(range) → new_str or nil
p advice.slice!(0..38)
p advice

# reset variable advice 
advice = "Few things in life are as important as house training your pet dinosaur."

# slice!(match_str) → new_str or nil
p advice.slice!('Few things in life are as important as ')
p advice