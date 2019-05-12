# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = gets()
# puts(answer)

def prompt(message)
  puts "=> #{message}"
end

# def valid_number?(num)
#   Integer(num) rescue false
# end

def number?(obj) # Better number input validation
  obj = obj.to_s unless obj.is_a? String
  /\A[+-]?\d+(\.[\d]+)?\z/.match(obj)
end

def operation_to_message(op)
  message = case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end

  return message
end

prompt("Welcome to Calculator! Enter your name:")
name = nil
loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = nil
  loop do
    prompt("What's the first number?")
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  number2 = nil
  loop do
    prompt("What's the second number?")
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  prompt(operator_prompt)
  operator = nil
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include? operator
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message operator} the two numbers...")
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

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y for Yes)")
  answer = gets.chomp
  break unless answer.downcase.start_with? 'y'
end

prompt("Thank you for using the calculator. Goodbye!")
