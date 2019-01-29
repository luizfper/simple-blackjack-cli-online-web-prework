def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer=gets.chomp
  return answer
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum= card1+card2
  display_card_total(sum)
  return sum
end

def hit? (sum)
 #while answer!="s"
 prompt_user
 answer=get_user_input
 case answer
 when "h"
   sum+=deal_card
 end
 return sum
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  Welcome
  sum = initial_round

  sum = hit
  display_card_total
end
