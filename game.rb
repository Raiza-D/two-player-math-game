class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @game_over = false
    @player1_turn = true
  end

  # Loop through game. Checks status at end of each turn.
  def start_game
    puts "----- GOOD LUCK! -----"
    while !@game_over
      if (@player1_turn)
        self.question(@player1)
      else
        self.question(@player2)
      end

      puts "#{@player1.name} #{@player1.lives}/3 VS. #{@player2.name} #{@player2.lives}/3"

      self.game_status
    end
  end

  # Asks math question with randomly-generated two numbers between 0 to 20
  # Checks user input if correct against answer
  # Checks current player's lives remaining
  # Switches off player1's turn so player2 can play, alternates.
  def question(player)
    @first_num = rand(20)
    @second_num = rand(20)

    puts "#{player.name}: What is #{@first_num} plus #{@second_num}?"
    @answer = gets.chomp.to_i

    if (@first_num + @second_num == @answer)
      puts "Correct, #{player.name} you're a math genius!"
    else
      puts "Seriously? That's incorrect."
      player.lives -= 1
    end

    if (player.lives == 0)
      @game_over = game_over(player)
    end

    @player1_turn = !@player1_turn
  end

  # If a player has no lives remaining, method prints and returns true.
  # 'true' value updates @game_over variable's value
  def game_over(player)
    puts "Game over. #{player.name} loses."
    return true
  end
  
  def game_status
    if !@game_over
      puts "----- NEW TURN -----"
    else
      puts "----- GAME OVER -----"
    end
  end

end