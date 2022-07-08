# top

require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  puts("=> #{message}")
end

def prompt_print(key)
  message = messages(key, LANGUAGE)
  print("=> #{message}")
end

def valid_number?(num)
  num.to_f != 0
end

prompt('welcome')
prompt('overview')

loop do
  loan_amount = ''
  loop do
    prompt('loan_amount')
    loan_amount = gets.chomp.to_f

    if valid_number?(loan_amount)
      break
    else prompt('invalid_num')
    end
  end

  apr = ''
  loop do
    prompt('apr')
    apr = gets.chomp.to_f/100

    if valid_number?(apr)
      break
    else prompt('invalid_num')
    end
  end

  loan_duration_months = ''
  loop do
    prompt('loan_duration')
    loan_duration_months = gets.chomp.to_f

    if valid_number?(loan_duration_months)
      break
    else prompt('invalid_num')
    end
  end

  monthly_interest_rate = apr/12
  monthly_payment = (loan_amount * (monthly_interest_rate/(1 - (1 + monthly_interest_rate)**(-loan_duration_months)))).round(2)
  prompt_print('monthly_payment_result') 
  print("#{monthly_payment}\n")
  prompt('again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('goodbye')
