**In the previous practice problem we added Dino to our array like this:**
```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
```
**We could have used either Array#concat or Array#push to add Dino to the family.**  

**How can we add multiple items to our array? (Dino and Hoppy)**
***
```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones += ['Dino', 'Hoppy']
p flintstones

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push('Dino').push('Hoppy')
p flintstones

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(['Dino', 'Hoppy'])
p flintstones
```