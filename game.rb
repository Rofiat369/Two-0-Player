require './question.rb'
require './player.rb'
require './main.rb'


class Game
  def initialize
    @player_1
    @player_2
  end

  def start_game
    puts "Welcome to the TwO-O-Player PlayerA, what should we call you?"
    @player_1 = Player.new(gets.chomp)

    puts "And you PlayerB?"
    @player_2 = Player.new(gets.chomp)

    @current_player = @player_1
    puts "Player 1 goes first."
    puts "\n"

    play while (@player_1.points > 0 && @player_2.points > 0)
    end_game
  end

  def change_players
    if (@current_player == @player_1)
      @current_player = @player_2
    else 
      @current_player = @player_1
    end
  end

  def play
    puts "~~~~~New Turn~~~~~"
    puts "\n"
    question = Question.new
    puts "#{@current_player.name}: #{question.num1} + #{question.num2} equals?"

    player_answer = gets.chomp.to_i 
    if(player_answer == question.answer)
      puts "Nice, that's correct!"
      puts "\n"
    else
      puts "Err, You don't know math..."
      @current_player.points += -1
      puts "\n"
    end

    puts "#{@player_1.name} - #{@player_1.life_points}/3 VS. #{@player_2.name} - #{@player_2.life_points}/3"

    change_players
  end


end