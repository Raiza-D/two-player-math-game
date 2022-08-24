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

    if (@first_num + @second_num == @answer)
      puts "Correct, you're a math genius!"
    else
      puts "Seriously? That's incorrect."
    end

    if (player.lives == 0)
      @game_over = game_over(player)
    end
  end

  def game_over?(player)
    puts "Game over. #{player.name} lost."
  end

end