# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

@language = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  # ensure the messages method is declared above this line
  message = messages(key, @language)
  Kernel.puts("=> #{message}")
end

def number?(obj) # Better number input validation
  obj = obj.to_s unless obj.is_a? String
  /\A[+-]?\d+(\.[\d]+)?\z/.match(obj)
end

def operation_to_message(op)
  message = case op
            when '1'
              prompt('adding')
            when '2'
              prompt('subtracting')
            when '3'
              prompt('multiplying')
            when '4'
              prompt('dividing')
            end
  message
end

prompt('language')
language_selection = gets.chomp
@language = case language_selection
            when '1'
              'en'
            when '2'
              'es'
            when '3'
              'fr'
            end

prompt('welcome')
name = nil
loop do
  name = gets.chomp
  if name.empty?
    prompt('valid_name')
  else
    break
  end
end

prompt('hi')
puts "=> #{name}!"

loop do # main loop
  number1 = nil
  loop do
    prompt('first_number')
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt('valid_number')
    end
  end

  number2 = nil
  loop do
    prompt('second_number')
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt('valid_number')
    end
  end

  prompt('what_operation')
  operator = nil
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include? operator
      break
    else
      prompt('choose')
    end
  end

  operation_to_message(operator)
  prompt('two_numbers')
  sleep 2

  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end

  prompt('result_is')
  puts result

  prompt('another_calculation')
  answer = gets.chomp
  break unless answer.downcase.start_with? 'y'
end

prompt('goodbye')
