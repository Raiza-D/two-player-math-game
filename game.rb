class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @game_over = false
    @player1_turn = true
  end

  def game_question(player)
    @first_num = rand(20)
    @second_num = rand(20)

    puts "#{player.name}: What is #{first_num} plus #{second_num}?"
    @answer = gets.chomp.to_i
  end

end