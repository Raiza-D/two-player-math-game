require "./player.rb"
require "./game.rb"

puts "WELCOME TO MATH-MANIA"
print "Player 1 - Enter your name: "
player_one_name = gets.chomp
player1 = Player.new(player_one_name)

print "Player 2 - Enter your name: "
player_two_name = gets.chomp
player2 = Player.new(player_two_name)

game = Game.new(player1, player2)
game.start_game

# Question
# puts "What does 5 plus 3 equal?"

# # Capturing user's answer - an input
# answer = gets.chomp

# # Message if answer correct or wrong

# # Score (lives remaining) for each player
# puts "P1: vs P2: "

# # New Turn divider
# puts "----- NEW TURN -----"
