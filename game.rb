require './questions'

class Game 
  
  def initialize()
    @player_1 = Player.new("Player 1", 3)
    @player_2 = Player.new("Player 2", 3)
    @current_player = @player_1
  end

  def start()
    while @player_1.lives > 0 && @player_2.lives > 0 do
      question = Question.new(@current_player.name)
      if question.answer == gets.chomp.to_i()
        puts "YES. You are correct."
      else
        puts "Seriously? No!"
        @current_player.lives -= 1
      end
        puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
        @current_player = @current_player == @player_1 ? @player_2 : @player_1
        puts "----- NEW TURN -----"
    end
      puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3 \n----- GAME OVER -----\n Good bye!"
  end

end
