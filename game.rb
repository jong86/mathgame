module MathGame
  class Game
    def initialize
      @player1 = Player.new("Player 1")
      @player2 = Player.new("Player 2")
    end

    def play
      puts "\n"
      cur_player = @player1

      loop do
        question = Question.new
        puts "#{cur_player.name}: " + question.ask
        answer = gets.chomp

        if (answer.to_i != question.solution.to_i)
          puts "#{cur_player.name}: you are WRONG -- IDIOT!"
          cur_player.lose_life
        else
          puts "#{cur_player.name}: you are CORRECT!"
        end

        puts "#{@player1.name}: #{@player1.lives}/3 lives | #{@player2.name}: #{@player2.lives}/3 lives"

        break if @player1.lives == 0 || @player2.lives == 0

        cur_player = cur_player == @player1 ? @player2 : @player1
        puts "\n------ NEW TURN ------"
      end

      puts "\n------ GAME OVER ------"
      winner = @player1.lives == 0 ? @player2 : @player1
      puts "#{winner.name} has won with #{winner.lives} lives left!\n"
    end
  end
end
