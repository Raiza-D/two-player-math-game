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
