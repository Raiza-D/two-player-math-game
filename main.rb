require "./player.rb"
require "./game.rb"

puts "Player 1 - Enter your name: "
player_one_name = gets.chomp
player1 = Player.new(player_one_name)

puts "Player 2 - Enter your name: "
player_two_name = gets.chomp
player2 = Player.new(player_two_name)


# Question
puts "What does 5 plus 3 equal?"

# Capturing user's answer - an input
answer = gets.chomp

# Message if answer correct or wrong

# Score (lives remaining) for each player
puts "P1: vs P2: "

# New Turn divider
puts "----- NEW TURN -----"
