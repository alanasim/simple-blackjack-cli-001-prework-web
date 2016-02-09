def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round 
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  card_total
end

def hit?(current_total)
  prompt_user
  answer = get_user_input
  if answer == "h"
    new_card = deal_card
    current_total = current_total + new_card
    return current_total
  elsif answer =="s"
    return current_total
    prompt_user
  else
    invalid_command
    prompt_user
  end

  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number = initial_round
  until number > 21 do
    total = hit?(number)
    display_card_total(total)
    number = total
  end
  end_game(number) 
  # code runner here
end
    
