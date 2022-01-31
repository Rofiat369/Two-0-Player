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

end