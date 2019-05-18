# Take everything you've learned so far and build a mortgage calculator
# (or car payment calculator -- it's the same thing).
#
# You'll need three pieces of information:
#
# * the loan amount
# * the Annual Percentage Rate (APR)
# * the loan duration
#
# From the above, you'll need to calculate the following two things:
#
# * monthly interest rate
# * loan duration in months
#
# You can use the following formula:
#
# m = p * (j / (1 - (1 + j)**(-n)))
#
# * m = monthly payment
# * p = loan amount
# * j = monthly interest rate
# * n = loan duration in months
#
# Finally, don't forget to run your code through Rubocop.
#
# * Figure out what format your inputs need to be in. For example, should the
#   interest rate be expressed as 5 or .05, if you mean 5% interest?
# * If you're working with Annual Percentage Rate (APR), you'll need to convert
#   that to a monthly interest rate.
# * Be careful about the loan duration -- are you working with months or years?
#   Choose variable names carefully to assist in remembering.

require 'yaml'
MESSAGES = YAML.load_file('mortgage_car_loan_calculator_messages.yml')

def print_messages(message)
  MESSAGES[message]
end

def prompt(key)
  # ensure the messages method is declared above this line
  message = print_messages(key)
  Kernel.puts("=> #{message}")
end

def print_welcome
  prompt('welcome')
  prompt('underline')
  sleep 1
end

def input_loan_amount
  prompt('loan_amount')
  loan_amount = nil
  loop do
    loan_amount = gets.chomp
    input_validate = /^\d+\.\d\d$/
    if loan_amount.match(input_validate)
      break
    else
      puts "Incorrect format, please enter as (Dollars.Cents)"
    end
  end
  loan_amount.to_f
end

def apr
  prompt('apr')
  apr_percentage = nil
  loop do
    apr_percentage = gets.chomp
    input_validate = /^100$|^\d{0,2}(\.\d{1,2})? *%?$/
    if apr_percentage.match(input_validate)
      break
    else
      puts "Incorrect format, please enter as percentage"
    end
  end
  apr_percentage.to_f
end

def loan_duration
  prompt('loan_duration_months')
  loan_duration_months = nil
  loop do
    loan_duration_months = gets.chomp
    input_validate = /^(1[0-2]|[1-9])$/
    if loan_duration_months.match(input_validate)
      break
    else
      puts "Incorrect format, please enter a month (1-12)"
    end
  end
  loan_duration_months.to_i
end

def calculate_monthly_interest_rate(apr_percentage)
  apr_decimal = apr_percentage / 100
  apr_decimal / 12
end

def calculate_monthly_payment(loan_amount, monthly_interest_rate, loan_duration_months)
  p = loan_amount
  j = monthly_interest_rate
  n = loan_duration_months
  p * (j / (1 - (1 + j)**-n))
end

def print_monthly_payment(monthly_payment)
  prompt('print_monthly_payment')
  sleep 1
  puts "=> $#{monthly_payment.round(2)}"
end

def another_calculation?
  prompt('another_calculation')
  gets.chomp.downcase != 'y'
end

def print_thank_you
  prompt('thank_you')
end

# main
print_welcome()
loop do
  loan_amount = input_loan_amount()
  apr_percentage = apr()
  loan_duration_months = loan_duration()
  monthly_interest_rate = calculate_monthly_interest_rate(apr_percentage)
  monthly_payment = calculate_monthly_payment(loan_amount, monthly_interest_rate, loan_duration_months)
  print_monthly_payment(monthly_payment)
  if another_calculation?()
    print_thank_you()
    break
  end
end
