LINE = 'The Flintstones Rock!'
OUTPUT_SUBSEQUENT_LINES = 9
space = ' '

puts LINE
OUTPUT_SUBSEQUENT_LINES.times {
  puts space + LINE
  space += ' '
}